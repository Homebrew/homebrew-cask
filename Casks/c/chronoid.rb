cask "chronoid" do
  version "1.0.89"
  sha256 "45684068ff58394249f511da4bb7c6a3cd61d20b7eea50c1e0296bb201d8dd74"

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
    "~/Library/Application Support/com.vu.Chronoid",
    "~/Library/Caches/com.vu.Chronoid",
    "~/Library/HTTPStorages/com.vu.Chronoid",
    "~/Library/Preferences/com.vu.Chronoid.plist",
    "~/Library/WebKit/com.vu.Chronoid",
  ]
end
