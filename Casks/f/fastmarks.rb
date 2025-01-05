cask "fastmarks" do
  version "1.3,8"
  sha256 "506bf22706c3ec6174964b0d4edf0093c228657585e6854bae60d7c564598be4"

  url "https://get.retina.studio/fastmarks/fastmarks_#{version.csv.second}.zip"
  name "Fastmarks"
  desc "Search and open web browser bookmarks"
  homepage "https://retina.studio/fastmarks/"

  livecheck do
    url "https://dash.retina.studio/appcast.php?id=59"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Fastmarks.app"

  zap trash: [
    "~/Library/Application Support/com.clickontyler.Fastmarks",
    "~/Library/Caches/com.clickontyler.Fastmarks",
    "~/Library/Preferences/com.clickontyler.Fastmarks.plist",
  ]
end
