cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "1.9.2"
  sha256 arm:   "0953433eea7403069852cbe90dfeb2d60d149eb8805da60dc7eff62d2d0b0a1b",
         intel: "eaac8e72ad993e7d5ecb7a17a23818faf5256f5426bdfcf8b20fd8886d9da020"

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
