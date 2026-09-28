cask "resettle" do
  version "0.8.7"
  sha256 "6d572e4deabe5e3bdd8290e87bef4a9fb590fb0afc48c947ebacbe06a68a81d0"

  url "https://cdn.getresettle.com/getresettle-com/releases/Resettle-#{version}.dmg",
      verified: "cdn.getresettle.com/getresettle-com/releases/"
  name "Resettle"
  desc "Remembers window positions for each display setup"
  homepage "https://getresettle.com/"

  livecheck do
    url "https://getresettle.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Resettle.app"

  zap trash: [
    "~/Library/Application Support/Resettle",
    "~/Library/Caches/com.getresettle.app",
    "~/Library/HTTPStorages/com.getresettle.app",
    "~/Library/Preferences/com.getresettle.app.plist",
  ]
end
