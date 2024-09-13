cask "lookin" do
  version "1.0.7"
  sha256 "45e0f5b0714e0ff41edcde8e0d2a95a174e5ffd1d4e3f22138446df3bb6013a5"

  url "https://cdn.lookin.work/release/Lookin-#{version.dots_to_hyphens}.zip"
  name "Lookin"
  desc "App for iOS view debugging"
  homepage "https://lookin.work/"

  # The pubDate for some items includes non-english characters (breaking the date parsing)
  # so it's necessary to map all of the items in the feed.
  livecheck do
    url "https://lookin.work/release/appcast.xml"
    strategy :sparkle do |items|
      items.map(&:short_version)
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Lookin.app"

  zap trash: [
    "~/Library/Application Support/hughkli.Lookin",
    "~/Library/Caches/hughkli.Lookin",
    "~/Library/HTTPStorages/hughkli.Lookin",
    "~/Library/Preferences/hughkli.Lookin.plist",
    "~/Library/Saved Application State/hughkli.Lookin.savedState",
  ]
end
