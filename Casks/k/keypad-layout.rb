cask "keypad-layout" do
  version "1.12"
  sha256 "3c4ec7dbe0d50918b4bfb126347d33e29bd7af0a5ae31aa48d68eb91c03e4ad0"

  url "https://github.com/janten/keypad-layout/releases/download/#{version}/Keypad-Layout.zip"
  name "Keypad Layout"
  desc "Utility to control window layout using the Ctrl key and the numeric keypad"
  homepage "https://github.com/janten/keypad-layout"

  app "Keypad Layout.app"

  zap trash: "~/Library/Preferences/com.jan-gerd.keypad-layout.plist"
end
