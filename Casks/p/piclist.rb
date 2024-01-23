cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.7.2"
  sha256 arm:   "d9629a8a2e241ceabc8323b88d0fe364e35679c3acf406a697f37b1cfee11f9c",
         intel: "23b4ea5eb695c45e8d20a0f8da4acb42ef5db3e13fc25051129bef8de87cb8de"

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
