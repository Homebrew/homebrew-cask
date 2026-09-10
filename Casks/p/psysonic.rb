cask "psysonic" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.52.0"
  sha256 arm:          "048945387a139bdc8e8cc70bd25be6bd364ccb974880dfd93d6ad748107d4b28",
         intel:        "9904de9637aefb1099a34e8ccc52a06d095ba90f2948b1abc2ee274e404a8324",
         x86_64_linux: "2822658304539389a785ae210eb63dc9e868d6fcb239e27f176d05308640d21a"

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
