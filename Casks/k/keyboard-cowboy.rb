cask "keyboard-cowboy" do
  version "3.24.2"
  sha256 "3086c2c7c99c49a9947abd91e3aecc7bfedbba0c5cc2042bb50ba328b0bba893"

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
