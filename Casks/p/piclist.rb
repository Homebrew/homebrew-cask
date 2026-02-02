cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.3.1"
  sha256 arm:   "92ba4a5d31a5c204472ad8b9292b700657927bed3e52ef18b3bd36f460b1fd8e",
         intel: "7bfd6343f2fb353725519944144d83be0fbf100619cb18a9c74348c14a1866f7"

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
