cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.9.4"
  sha256 arm:   "8d350757d77c506d74115668ff666f37e5bf776d0ed8f78bd259b3f7f98d724b",
         intel: "02be28ac99ee7b22d890071a23ae2a243e1e4ed7cdcae92550889a13f9921f35"

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
