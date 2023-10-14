cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.6.4"
  sha256 arm:   "787e667a5c07782a621c498656503d37baebc008984859b79be0cf2c0b3e01a4",
         intel: "94069a44bcc299498c746fd089539241ee13de1367c22178cb1152b268f224fd"

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
