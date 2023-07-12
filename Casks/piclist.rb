cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.9.7"
  sha256 arm:   "f2c5cbcd3764820774ca6f280ffadeaeb58175e06fc08570d8af5b41d8ad7456",
         intel: "70cc3d60e8db48f3eee75babc86b48e9b6ad9443573891e409ba78aa4c2c6e19"

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
