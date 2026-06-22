cask "chronoid" do
  version "1.0.88"
  sha256 "6f8392d37db0b9e19d6f590965e076babea84a5640c43381cf43b3d1682d5ce4"

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
