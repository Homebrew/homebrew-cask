cask "keyboard-cowboy" do
  version "3.26.1"
  sha256 "108d3727245f4922d0e54e9f78402842748305956c0858006db15efc4bc91025"

  url "https://github.com/zenangst/KeyboardCowboy/releases/download/#{version}/Keyboard.Cowboy.#{version}.dmg"
  name "Keyboard Cowboy"
  desc "Keyboard shortcut utility"
  homepage "https://github.com/zenangst/KeyboardCowboy"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Keyboard Cowboy.app"

  zap trash: [
    "~/.keyboard-cowboy.json",
    "~/Library/HTTPStorages/com.zenangst.Keyboard-Cowboy",
    "~/Library/Preferences/com.zenangst.Keyboard-Cowboy.plist",
  ]
end
