cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.9.6"
  sha256 arm:   "d07b95e5789dd1628864a4614fa662dc03e739c6e336fc04930fab111b74ddb0",
         intel: "03ef6c04de0b0078fd250ec393cf7cd3316105a55b5a02e358d95239b6d148a3"

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
