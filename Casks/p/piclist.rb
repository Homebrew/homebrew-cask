cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.6.5"
  sha256 arm:   "3a5b3f1a216afbc9c315d89bcf3a7821fde81abf417e3ca68f39b0c3105f872e",
         intel: "b8277a5a75145259339fd6d201336916a6ef2bba41fce28e5da5dfb28dc316f5"

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
