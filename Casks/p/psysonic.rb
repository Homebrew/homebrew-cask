cask "psysonic" do
  arch arm: "aarch64", intel: on_system_conditional(macos: "x64", linux: "amd64")
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "1.53.0"
  sha256 arm:          "e70cde0c39d40ceda348e342653dd7a0f940dbfbef47e650ca711272ff229360",
         intel:        "f3d4e46fefd454188891e45069105066e4fc95ea37d7b3cbd78483fefd5d0b10",
         x86_64_linux: "73d89e51e1bf25e24755d552d116ed7b566357c27af324fd0d2bd6591c1ae038"

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
