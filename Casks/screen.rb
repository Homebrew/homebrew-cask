cask "screen" do
  version "2.1.6"
  sha256 "9d7cf9220b5aba305c667b748761ccc7b956ba2584dccce4176b6d732db6cfe8"

  url "https://download.screen.so/desktop-app/darwin/#{version}/Screen.dmg"
  appcast "https://download.screen.so/"
  name "Screen"
  homepage "https://screen.so/"

  auto_updates true

  app "Screen.app"

  zap trash: [
    "~/Library/Application Support/Screen",
    "~/Library/Preferences/so.screen.screen.app.plist",
  ]
end
