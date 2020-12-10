cask "bitbar" do
  version "1.10.0"
  sha256 "d0e023583d443f98f2adb3c307da01de608abc98d03887e5fd85d3004716d0fb"

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar.app.zip"
  appcast "https://github.com/matryer/bitbar/releases.atom"
  name "BitBar"
  desc "Utility to display the output from any script or program in the menu bar"
  homepage "https://github.com/matryer/bitbar/"

  app "BitBar.app"

  zap trash: [
    "~/Library/BitBar Plugins",
    "~/Library/Caches/com.matryer.BitBar",
    "~/Library/Preferences/com.matryer.BitBar.plist",
  ]
end
