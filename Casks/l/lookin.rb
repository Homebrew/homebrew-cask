cask "lookin" do
  version "1.0.5"
  sha256 "5dab70cae2a8a3a1e0c9a7bb8cc078b3c985e40b4f8bed2b41c4d342d6d51643"

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
