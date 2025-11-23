cask "swinsian" do
  version "3.0.3"
  sha256 "597b7b9982736abdfa300c3fa19a53c67d0084e51d7f8b7c4878a081536acb2f"

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
