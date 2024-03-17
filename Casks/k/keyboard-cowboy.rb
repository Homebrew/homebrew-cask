cask "keyboard-cowboy" do
  version "3.23.2"
  sha256 "85e527c8a86620dedd9201464249000d49f77143b7406a944eeff71b571ffe45"

  url "https://github.com/zenangst/KeyboardCowboy/releases/download/#{version}/Keyboard.Cowboy.#{version}.dmg"
  name "Keyboard Cowboy"
  desc "Keyboard shortcut utility"
  homepage "https://github.com/zenangst/KeyboardCowboy"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "Keyboard Cowboy.app"

  zap trash: "~/Library/Preferences/com.zenangst.Keyboard-Cowboy.plist"
end
