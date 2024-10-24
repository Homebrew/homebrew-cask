cask "keyboard-cowboy" do
  version "3.25.0"
  sha256 "e91715193dce664f927d852b32e645060e2bbc42b224e6bfa199753f425b8749"

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
