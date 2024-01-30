cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.7.3"
  sha256 arm:   "196407a1dae021dcc2f42ddfc0602381385b90a5f4e7b0e5121fa2b45ae3f830",
         intel: "c36ff372c4f5cb83f5c247997b33e621c287afba5ceae41d4263c35469860480"

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
