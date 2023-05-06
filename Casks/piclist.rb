cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.8.4"
  sha256 arm:   "0f7aabc1e4391479aee8f9d4d213be33062fd8479beac9427ecb997f66d190a6",
         intel: "0ed931b1a72ecc7c47413eb0535f8a6e09078559de7ac243db9c504a772bb6b8"

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
