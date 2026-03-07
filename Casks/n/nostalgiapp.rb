cask "nostalgiapp" do
  version "1.0.7.1"
  sha256 "1fd8d6710629fa2c3750207b0eba302a575e6a1bdc4bd8a3843e918f26106098"

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
