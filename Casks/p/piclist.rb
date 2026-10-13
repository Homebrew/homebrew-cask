cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.6.0"
  sha256 arm:   "d631f4a9ea6673a4f4922784ec1566eba52095d37613856a97412b529067b941",
         intel: "68bcbd9915f6921350b68db2912e903be19f9fe5a7a4c4034b093b623d38e740"

  url "https://github.com/Kuingsmile/PicList/releases/download/v#{version}/PicList-#{version}-#{arch}.dmg"
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
