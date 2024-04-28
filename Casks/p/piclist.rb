cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.8.4"
  sha256 arm:   "59b1ba2b8d2114243ef02d7bd99eb041312144635d427b2b47f5dcd9630cde61",
         intel: "818204208ad467b073f2463a928bbadb59d7a0511bf9fe66649e1c5514469fe2"

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
