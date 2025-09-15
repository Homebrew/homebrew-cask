cask "swinsian" do
  version "3.0.0"
  sha256 "0d178cf77177e37c5bb46b924d9b9f41f9efaa2ffaa6d2844d2af714f3e4d2fc"

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
