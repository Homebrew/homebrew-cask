cask "lookin" do
  version "1.0.6"
  sha256 "ccde0b09cbffc955a5beb33e285b530ac27ba20291424110be0faec2d21e98ee"

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
end
