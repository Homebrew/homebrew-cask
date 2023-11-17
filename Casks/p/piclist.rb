cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.6.7"
  sha256 arm:   "5f8c832314196d26e0dfd48211fc83368c910c60665b3484434f8f9064c7a9a1",
         intel: "9da2246cdf57c84cfd9693162b19f250ded41db737ebabc2e156f5fad43cbd95"

  url "https://release.piclist.cn/latest/PicList-#{version}-#{arch}.dmg"
  name "PicList"
  desc "Cloud storage manager tool"
  homepage "https://piclist.cn/"

  livecheck do
    url "https://release.piclist.cn/latest/latest-mac.yml"
    strategy :electron_builder
  end

  app "PicList.app"

  zap trash: [
    "~/Library/Application Support/piclist",
    "~/Library/Preferences/com.kuingsmile.piclist.plist",
    "~/Library/Saved Application State/com.kuingsmile.piclist.savedState",
  ]
end
