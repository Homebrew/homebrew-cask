cask "orbstack" do
  arch arm: "arm64", intel: "amd64"

  version "2.0.5,19905"
  sha256 arm:   "601889551cdfdc7feee148b7fdb0480fa0ba5c0db0be8f1c047fc840886a7571",
         intel: "a858fa2dcd26f7f75cd7f99c24ed1a69f459b39bf2090c826f997ecc9c1d17eb"

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
