cask "fastmarks" do
  version "1.1.0,5"
  sha256 "fbcb15f2b78e471022769039fbaa7fd20185533891f06d5820fc5158230def8e"

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
