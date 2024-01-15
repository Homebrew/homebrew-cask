cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.7.1"
  sha256 arm:   "85cc342ed8254b36f6148b377e3504861a47ccc7ab5faba1e50501c69ac27b43",
         intel: "d6d1eadfe172708439f98bd018c706ced75c80c1fca5b427a7ecba67b28e8637"

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
