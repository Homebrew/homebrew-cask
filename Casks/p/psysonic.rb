cask "psysonic" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.54.0"
  sha256 arm:          "bf190fb803f506288e8a7bacfc508a1901d4e545b35517c6f21a87727ecff06b",
         intel:        "3ae27b021b4d3ddbf90232014e27b4dd508ec9131291a8004843d425aefd05d7",
         x86_64_linux: "2a5086dc876da709bdbf7b5c979e611e72611c3a1f4b4ae20236d4a38ed1e159"

  on_macos do
    auto_updates true

    app "Psysonic.app"

    uninstall quit: "dev.psysonic.player"

    zap trash: [
      "~/Library/Application Support/dev.psysonic.player",
      "~/Library/Caches/dev.psysonic.player",
      "~/Library/Preferences/dev.psysonic.player.plist",
      "~/Library/Saved Application State/dev.psysonic.player.savedState",
      "~/Library/WebKit/dev.psysonic.player",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Psysonic_#{version}_#{arch}.AppImage", target: "Psysonic.AppImage"
  end

  url "https://github.com/Psysonic/psysonic/releases/download/app-v#{version}/Psysonic_#{version}_#{arch}.#{url_end}"
  name "Psysonic"
  desc "Desktop client for Navidrome and other Subsonic-compatible servers"
  homepage "https://www.psysonic.de/"
end
