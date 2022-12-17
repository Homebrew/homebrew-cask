cask "fastmarks" do
  version "1.2,7"
  sha256 "de741937b2b45cbcc6e7e4be265a82c5413e2416481f3346707bd8910836e2f2"

  url "https://get.retina.studio/fastmarks/fastmarks_#{version.csv.second}.zip"
  name "Fastmarks"
  desc "Search and open web browser bookmarks"
  homepage "https://retina.studio/fastmarks/"

  livecheck do
    url "https://dash.retina.studio/appcast.php?id=59"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Fastmarks.app"

  zap trash: [
    "~/Library/Application Support/com.clickontyler.Fastmarks",
    "~/Library/Caches/com.clickontyler.Fastmarks",
    "~/Library/Preferences/com.clickontyler.Fastmarks.plist",
  ]
end
