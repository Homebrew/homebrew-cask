cask "chronoid" do
  version "1.0.104"
  sha256 "97e77864e3c21a74618511849db38ad6785e432a8e3850d576cec7d3ef17bcfc"

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
