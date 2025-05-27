cask "rollplay" do
  version "1.2.4"
  sha256 :no_check

  url "https://github.com/thusvill/LiveWallpaperMacOS/releases/download/v#{version}/RollPlay-Silicon.dmg"
  name "RollPlay"
  desc "Open-source live wallpaper application for macOS 15+"
  homepage "https://github.com/thusvill/LiveWallpaperMacOS"

  app "RollPlay.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-d", "com.apple.quarantine", "#{appdir}/RollPlay.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/RollPlay",
    "~/Library/Preferences/com.thusvill.rollplay.plist",
  ]

  depends_on macos: ">= :sequoia"
end
