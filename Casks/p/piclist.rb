cask "piclist" do
  arch arm: "arm64", intel: "x64"

  version "2.9.7"
  sha256 arm:   "4bc609bc7eac921be33baae19d220ef99989b9e07984eaebee02427a029fa132",
         intel: "874d9334885bbc721a5a1666cff412334787917eaa649e829298cfac4cdbcd67"

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
