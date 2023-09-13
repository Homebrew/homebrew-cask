cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.6.1"
  sha256 arm:   "fcba30c35bc5c44c86c7c9123ca07a4aeb7d6061507761e8c2da499f9a1e2146",
         intel: "d38611632add810517e2924923e7f2c4e1006e74d0e5b1fe11225c8d1e674596"

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
