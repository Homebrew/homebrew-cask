cask "swinsian" do
  version "3.0.5"
  sha256 "769a320a92ac565f9f73e541bd5471414136732ea53cd92c9be81f66be5fdc40"

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  name "Swinsian"
  desc "Music player"
  homepage "https://swinsian.com/"

  livecheck do
    url "https://www.swinsian.com/sparkle/sparklecast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Swinsian.app"

  zap trash: [
    "~/Library/Application Scripts/com.swinsian.SwinsianArtworkTagReader",
    "~/Library/Application Scripts/com.swinsian.SwinsianChapterReader",
    "~/Library/Application Support/Swinsian",
    "~/Library/Containers/com.swinsian.SwinsianArtworkTagReader",
    "~/Library/Containers/com.swinsian.SwinsianChapterReader",
    "~/Library/Preferences/com.swinsian.Swinsian.plist",
  ]
end
