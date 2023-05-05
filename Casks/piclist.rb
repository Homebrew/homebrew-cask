cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.8.2"
  sha256 arm:   "965b667954a16bef0befcb7120b5155d9f4322cdf626812d4ce069698beadbe5",
         intel: "342e071659d186ff0150bef92ea047c7ed2e10802cade5f8a169990e3b0597b4"

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
