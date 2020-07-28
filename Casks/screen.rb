cask "screen" do
  version "2.1.4"
  sha256 "e38dea29ccdb6e24d04c82ba7e56e2d8b8c4f4df01dedb7c3ccaeb15935ad07a"

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
