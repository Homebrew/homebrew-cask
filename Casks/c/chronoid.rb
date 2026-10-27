cask "chronoid" do
  version "1.0.105"
  sha256 "13ea83ca803d14d5483782b0c257d21b5649838fa118c783ec50cddf9a0d5817"

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
