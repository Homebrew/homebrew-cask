cask "screen" do
  version "3.1.3"
  sha256 "f0dddaaa94ac4085fc8f2b32bafae0d5dd5a56255e808280256c3a9cc6d95c2c"

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
