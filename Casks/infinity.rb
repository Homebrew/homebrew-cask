cask "infinity" do
  version "1.0.0"
  sha256 :no_check

  url "https://startinfinity.com/downloads/Infinity_macOS.dmg"
  name "Infinity"
  desc "Customizable work management platform"
  homepage "https://startinfinity.com/"

  app "Infinity.app"

  uninstall quit: [
    "com.electron.infinity",
  ]

  zap trash: [
    "~/Library/Application Support/Infinity",
    "~/Library/Preferences/com.electron.infinity.plist",
    "~/Library/Saved Application State/com.electron.infinity.savedState",
  ]
end
