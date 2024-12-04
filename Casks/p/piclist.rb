cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.9.6"
  sha256 arm:   "474b962b3214bde86f03b8352348d2bfe7923ef268d5f1429f360462fa8045af",
         intel: "1dd6c3e7f8ffb5d7a5fe0feed5d29fbab4fd1e1ef9ec87589b9c35a36910e704"

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
