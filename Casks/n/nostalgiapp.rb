cask "nostalgiapp" do
  version "1.0.8.7.13"
  sha256 "eb8c732fb64cf0b0155d6f8b3567d5ecc53d68ef3acf1ee41c876c5ff13dd433"

  url "https://www.nostalgi.app/downloads/NostalgiApp-#{version}.dmg"
  name "NostalgiApp"
  desc "Launcher for eXoDOS and retro game collections"
  homepage "https://nostalgi.app/"

  livecheck do
    url "https://nostalgi.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "NostalgiApp.app"

  zap trash: [
    "~/Library/Application Support/NostalgiApp",
    "~/Library/Caches/com.nostalgi.app",
    "~/Library/Logs/NostalgiApp",
    "~/Library/Preferences/com.nostalgi.app.plist",
  ]
end
