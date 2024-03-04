cask "keyboard-cowboy" do
  version "3.23.0"
  sha256 "0f6b0b5aa34aa778f51ba7e363ee9b4a331b7b0eb52450c99fccd5b433af76a5"

  url "https://github.com/zenangst/KeyboardCowboy/releases/download/#{version}/Keyboard.Cowboy.#{version}.dmg"
  name "Keyboard Cowboy"
  desc "Keyboard shortcut utility"
  homepage "https://github.com/zenangst/KeyboardCowboy"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Keyboard Cowboy.app"

  zap trash: "~/Library/Preferences/com.zenangst.Keyboard-Cowboy.plist"
end
