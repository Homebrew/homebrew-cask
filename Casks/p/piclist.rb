cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.6.8"
  sha256 arm:   "aba5386af91dca3d71cfd1af0e2d21327d51c0883f9bc4c7e5f50fcef146a6ec",
         intel: "149028b3892087241be03d1a97287e171c47ea89cfc8c2d26f6935dcf81b1fff"

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
