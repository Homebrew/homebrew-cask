cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.8.1"
  sha256 arm:   "5f53bc8422d449904c03e1f676f98dba5406d9cb82bd351ff253bb8cf616568e",
         intel: "f004b3d9d56680351265d01d1ec0ccd278b74de9cb31c56fbfb825c335185574"

  url "https://release.piclist.cn/latest/PicList-#{version}-#{arch}.dmg"
  name "PicList"
  desc "Cloud storage manager tool"
  homepage "https://piclist.cn/"

  livecheck do
    url "https://release.piclist.cn/latest/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "PicList.app"

  zap trash: [
    "~/Library/Application Support/piclist",
    "~/Library/Preferences/com.kuingsmile.piclist.plist",
    "~/Library/Saved Application State/com.kuingsmile.piclist.savedState",
  ]
end
