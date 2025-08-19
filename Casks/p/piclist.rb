cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "3.0.1"
  sha256 arm:   "1c938a57410b2b014df3e45460850e1a6fd3c0d44e0aa3378623585d87c094e4",
         intel: "8bd03928bb5c41ace9b87e13b6e6481b451e5c6b43e1675bd9966ae16d4bcaa7"

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
  depends_on macos: ">= :high_sierra"

  app "PicList.app"

  zap trash: [
    "~/Library/Application Support/piclist",
    "~/Library/Preferences/com.kuingsmile.piclist.plist",
    "~/Library/Saved Application State/com.kuingsmile.piclist.savedState",
  ]
end
