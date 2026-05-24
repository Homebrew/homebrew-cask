cask "chronoid" do
  version "1.0.84"
  sha256 "2ea57155de8c1ea76177debd62dcad17a9a3e0bd48124a6f72ab998dda8bfc06"

  url "https://download.chronoid.app/Chronoid-#{version}.dmg"
  name "Chronoid"
  desc "Automatic time tracker and productivity insights app"
  homepage "https://chronoid.app/"

  livecheck do
    url "https://download.chronoid.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Chronoid.app"

  zap trash: [
    "~/Library/Application Support/com.vu.Chronoid",
    "~/Library/Caches/com.vu.Chronoid",
    "~/Library/HTTPStorages/com.vu.Chronoid",
    "~/Library/Preferences/com.vu.Chronoid.plist",
    "~/Library/Saved Application State/com.vu.Chronoid.savedState",
    "~/Library/WebKit/com.vu.Chronoid",
  ]
end
