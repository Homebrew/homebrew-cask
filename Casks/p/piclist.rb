cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.1.1"
  sha256 arm:   "1fd2baa0f8f39b0fa6b6e14e6d20812266aa6b9385c7ab00ef115094510e5ac7",
         intel: "a621a1988bc12d6292d6feeee5f258016a26d338b98ba582565a21f11e18a5f7"

  url "https://github.com/Kuingsmile/PicList/releases/download/v#{version}/PicList-#{version}-#{arch}.dmg",
      verified: "github.com/Kuingsmile/PicList/"
  name "PicList"
  desc "Cloud storage manager tool"
  homepage "https://piclist.cn/"

  livecheck do
    url "https://release.piclist.cn/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "PicList.app"

  zap trash: [
    "~/Library/Application Support/piclist",
    "~/Library/Preferences/com.kuingsmile.piclist.plist",
    "~/Library/Saved Application State/com.kuingsmile.piclist.savedState",
  ]
end
