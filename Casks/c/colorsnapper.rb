cask "colorsnapper" do
  version "1.6.4"
  sha256 "75fbc9a5c43a81017cb1be1b62df47950504def14f9378b25f58e079302828e5"

  url "https://cs2-binaries.s3.amazonaws.com/ColorSnapper2-#{version.dots_to_underscores}.zip",
      verified: "cs2-binaries.s3.amazonaws.com/"
  name "ColorSnapper 2"
  desc "Colour picker"
  homepage "https://colorsnapper.com/"

  # The Sparkle feed has incorrect pubDates for newer items, which causes the
  # `:sparkle` strategy to choose an older version as latest. As a workaround,
  # we find the latest version using the value of `sparkle:version`.
  livecheck do
    url "https://cs2-appcast.s3.amazonaws.com/appcast.xml"
    regex(/sparkle:version=["']?(\d+(?:\.\d+)+)["' >]/i)
  end

  depends_on macos: ">= :sierra"

  app "ColorSnapper2.app"

  uninstall quit: "com.koolesache.ColorSnapper2"

  zap trash: [
    "~/Library/Application Support/ColorSnapper2",
    "~/Library/Application Support/com.koolesache.ColorSnapper2",
    "~/Library/Caches/com.koolesache.ColorSnapper2",
    "~/Library/Cookies/com.koolesache.ColorSnapper2.binarycookies",
    "~/Library/Preferences/com.koolesache.ColorSnapper2.plist",
  ]

  caveats do
    requires_rosetta
  end
end
