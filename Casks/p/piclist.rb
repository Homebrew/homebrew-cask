cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.4.0"
  sha256 arm:   "38b1864be67c80b88294dea3ce48d2f97682f1971f370e26487cf252963e5eab",
         intel: "816e421bf310c05547ea4d685b6a17c95f6f2ce629f66ecfeb9e640d62188cc8"

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
  depends_on macos: :monterey

  app "PicList.app"

  zap trash: [
    "~/Library/Application Support/piclist",
    "~/Library/Preferences/com.kuingsmile.piclist.plist",
    "~/Library/Saved Application State/com.kuingsmile.piclist.savedState",
  ]
end
