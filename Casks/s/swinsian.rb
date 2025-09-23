cask "swinsian" do
  version "3.0.1"
  sha256 "d7d2d49369b8722c47a11114e0c188522618ed110ee44d10ae363757108cdb59"

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
