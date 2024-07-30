cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.9.2"
  sha256 arm:   "ce534c5c7cc4a1bf5ae0b1c5a8879e6bfd32e2b465369af8e52df2df04fa6e41",
         intel: "1cda538bcc73cb8b95d9ae1362a7e4d628f23b8f88b81d7dc6a166df0384868e"

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
