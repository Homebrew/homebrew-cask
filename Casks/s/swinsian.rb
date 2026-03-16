cask "swinsian" do
  version "3.0.8"
  sha256 "05739cc1eeeae2a5a7eb6dd0eaaad7cba484c051e5c2a28f157a78f3f7670ad7"

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
