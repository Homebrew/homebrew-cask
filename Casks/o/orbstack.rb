cask "orbstack" do
  arch arm: "arm64", intel: "amd64"

  version "2.2.3,20963"
  sha256 arm:   "7ca77868f3a0d7d9f57b3f98615aad30cc59d23cc84bbff13f78846df0b493d4",
         intel: "d1aa8723d19a6bc8dba4b6490e99710e926aa5f229920da8e1be0fbba903641f"

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
  depends_on macos: :sonoma

  app "OrbStack.app"
  binary "#{appdir}/OrbStack.app/Contents/MacOS/bin/orb"
  binary "#{appdir}/OrbStack.app/Contents/MacOS/bin/orbctl"
  bash_completion "#{appdir}/OrbStack.app/Contents/Resources/completions/bash/orbctl.bash"
  fish_completion "#{appdir}/OrbStack.app/Contents/Resources/completions/fish/orbctl.fish"
  zsh_completion "#{appdir}/OrbStack.app/Contents/Resources/completions/zsh/_orb"
  zsh_completion "#{appdir}/OrbStack.app/Contents/Resources/completions/zsh/_orbctl"

  postflight_steps do
    run "OrbStack.app/Contents/MacOS/bin/orbctl", args: ["_internal", "brew-postflight"], base: :appdir
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
