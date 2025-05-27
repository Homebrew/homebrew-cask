cask "rollplay" do
  version "1.2.4"
  sha256 :no_check

  url "https://github.com/thusvill/LiveWallpaperMacOS/releases/download/V#{version}/RollPlay-Silicon.dmg"
  name "RollPlay"
  desc "Open-source live wallpaper application"
  homepage "https://github.com/thusvill/LiveWallpaperMacOS"

  depends_on macos: ">= :sequoia"

  app "RollPlay.app"

  postflight do
    if MacOS.version >= :sequoia
      system_command "/usr/bin/xattr",
        args: ["-d", "com.apple.quarantine", "/Applications/RollPlay.app"],
        sudo: false,
        print_stderr: false,
        fail_if_error: false
    end
  end

  zap trash: [
    "/Applications/RollPlay.app",
  ]
end
