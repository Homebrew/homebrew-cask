cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.9.1"
  sha256 arm:   "ffe482fdb04f060f23e76c3d2833e22d46d38b47e6873d94836dfb59f2a31bf6",
         intel: "a5cdd079a1ee8c49d2db20265540658f8073c43e0fd3cbc11ef5ca04d4f7fac8"

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
