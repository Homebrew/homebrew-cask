cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.8.0"
  sha256 arm:   "25ffaf5e32d6c67d0f9bbb9e58bb2e01b5fff1dcb8e458eb51be673657ac82a1",
         intel: "05689628c8f39b6a5fd79ad40f1b8348937a85dba1465124487239b4a10b597c"

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
