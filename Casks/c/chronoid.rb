cask "chronoid" do
  version "1.0.101"
  sha256 "78731d9b607ba437625cc65693c161506efade8ffa4601a3fd8c9593644bf849"

  url "https://download.chronoid.app/Chronoid-#{version}.dmg"
  name "Chronoid"
  desc "Automatic time tracker and productivity insights app"
  homepage "https://chronoid.app/"

  livecheck do
    url "https://download.chronoid.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Chronoid.app"

  zap trash: [
    "/Users/Shared/.chronoid-security",
    "~/Library/Application Support/com.vu.Chronoid",
    "~/Library/Caches/com.vu.Chronoid",
    "~/Library/HTTPStorages/com.vu.Chronoid",
    "~/Library/Preferences/com.vu.Chronoid.plist",
    "~/Library/WebKit/com.vu.Chronoid",
  ]
end
