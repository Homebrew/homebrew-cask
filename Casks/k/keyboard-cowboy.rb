cask "keyboard-cowboy" do
  version "3.24.1"
  sha256 "d93ad8ce3bc0568107390830fe8385f2b9831941b68bc406ea351b1cbc96f30b"

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
