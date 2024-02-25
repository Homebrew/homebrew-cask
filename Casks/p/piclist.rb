cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.7.4"
  sha256 arm:   "f8f27bb540ba9b447aa7cd7a24109968b610efb591242d7c0ceadb6cc2a1270e",
         intel: "1b33c6ad5a20f8a6a5a0ec457f5ed62bbc81d121ca6f172a866d75f6eeb60448"

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
