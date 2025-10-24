cask "orbstack" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.4,19887"
  sha256 arm:   "ba88340750eba3996448c0d6afe14ebe6787fee7b736834dbc8511ffe15910db",
         intel: "94b8f8065486d3508c6025415ae0128f10a3adccefee66c2d625ccd168161edc"

  url "https://cdn-updates.orbstack.dev/#{arch}/OrbStack_v#{version.csv.first}_#{version.csv.second}_#{arch}.dmg"
  name "OrbStack"
  desc "Replacement for Docker Desktop"
  homepage "https://orbstack.dev/"

  livecheck do
    url "https://cdn-updates.orbstack.dev/#{arch}/appcast.new.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel == "stable" }&.nice_version
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "OrbStack.app"
  binary "#{appdir}/OrbStack.app/Contents/MacOS/bin/orb"
  binary "#{appdir}/OrbStack.app/Contents/MacOS/bin/orbctl"
  bash_completion "#{appdir}/OrbStack.app/Contents/Resources/completions/bash/orbctl.bash"
  fish_completion "#{appdir}/OrbStack.app/Contents/Resources/completions/fish/orbctl.fish"
  zsh_completion "#{appdir}/OrbStack.app/Contents/Resources/completions/zsh/_orb"
  zsh_completion "#{appdir}/OrbStack.app/Contents/Resources/completions/zsh/_orbctl"

  postflight do
    system_command "#{appdir}/OrbStack.app/Contents/MacOS/bin/orbctl",
                   args: ["_internal", "brew-postflight"]
  end

  uninstall script: {
    executable: "#{appdir}/OrbStack.app/Contents/MacOS/bin/orbctl",
    args:       ["_internal", "brew-uninstall"],
  }

  zap trash: [
        "~/.orbstack",
        "~/Library/Caches/dev.kdrag0n.MacVirt",
        "~/Library/Group Containers/*.dev.orbstack",
        "~/Library/HTTPStorages/dev.kdrag0n.MacVirt",
        "~/Library/HTTPStorages/dev.kdrag0n.MacVirt.binarycookies",
        "~/Library/Preferences/dev.kdrag0n.MacVirt.plist",
        "~/Library/Saved Application State/dev.kdrag0n.MacVirt.savedState",
        "~/Library/WebKit/dev.kdrag0n.MacVirt",
      ],
      rmdir: "~/OrbStack"

  caveats <<~EOS
    Open the OrbStack app to finish setup.
  EOS
end
