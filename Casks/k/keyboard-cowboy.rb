cask "keyboard-cowboy" do
  version "3.28.2"
  sha256 "5fa181c547d08d41877042492d57716d35d8bf1cb13131497164496283db5b97"

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
