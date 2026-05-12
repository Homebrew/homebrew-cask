cask "colorsnapper" do
  version "1.7.1"
  sha256 "82617dffd3ddeda0eeeb30e75deab5249b5c667affd02bb2995ad57ffb9d3145"

  url "https://cs2-binaries.s3.amazonaws.com/ColorSnapper2-#{version.dots_to_underscores}.zip",
      verified: "cs2-binaries.s3.amazonaws.com/"
  name "ColorSnapper 2"
  desc "Colour picker"
  homepage "https://colorsnapper.com/"

  # The appcast has incorrect `pubDate` values for newer items, which causes
  # the `Sparkle` strategy to choose an older version as latest. Until the
  # dates are fixed, it's necessary to work with all the items in the feed.
  livecheck do
    url "https://cs2-appcast.s3.amazonaws.com/appcast.xml"
    strategy :sparkle do |items|
      items.map(&:version)
    end
  end

  depends_on macos: :sonoma

  app "ColorSnapper2.app"

  uninstall quit: "com.koolesache.ColorSnapper2"

  zap trash: [
    "~/Library/Application Support/ColorSnapper2",
    "~/Library/Application Support/com.koolesache.ColorSnapper2",
    "~/Library/Caches/com.koolesache.ColorSnapper2",
    "~/Library/Cookies/com.koolesache.ColorSnapper2.binarycookies",
    "~/Library/Preferences/com.koolesache.ColorSnapper2.plist",
  ]
end
