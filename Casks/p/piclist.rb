cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.8.5"
  sha256 arm:   "69e8d566b7fb3c75731f05d4ed440fc967d4b8846272f6786c35d8bf8e805ed3",
         intel: "c6c3051c3389c2a8297399b051d276dba33dbbc93462de057b7bf3b95259ab79"

  url "https://release.piclist.cn/latest/PicList-#{version}-#{arch}.dmg"
  name "PicList"
  desc "Cloud storage manager tool"
  homepage "https://piclist.cn/"

  livecheck do
    url "https://release.piclist.cn/latest/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "PicList.app"

  zap trash: [
    "~/Library/Application Support/piclist",
    "~/Library/Preferences/com.kuingsmile.piclist.plist",
    "~/Library/Saved Application State/com.kuingsmile.piclist.savedState",
  ]
end
