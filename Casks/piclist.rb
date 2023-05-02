cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "7304a443360554ecd0716c96e0c4da263fd088bb1fa0b0f2df1b2d076e8e3b0f",
         intel: "02ff981746431d9766c08e2f944d56e1620aaa54737cc115e2bf4f09ba867c69"

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
