cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.9.0"
  sha256 arm:   "621a29dd3784b3bb732a235cfdbe4be1cf5d781361a3046cbea739c80fc76261",
         intel: "deb978e38e9852f7ba1e6dad3559f3f3cfd133b560337260c6830d4349817c5b"

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
