cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.58"
  sha256 arm:   "0a5ef85b61a5a822ca4ae57fe8ced5681f80e5936d88dd01d06fd714c1b43869",
         intel: "e45477f40d6f20ab7ad5fe567295fbee30df5d1125f202e0d850592a4d98dd3e"

  url "https://github.com/DmytroVasin/DrawPen/releases/download/v#{version}/DrawPen-#{version}-#{arch}.dmg"
  name "DrawPen"
  desc "Screen annotation tool"
  homepage "https://github.com/DmytroVasin/DrawPen"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "DrawPen.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dmytro.vasin.drawpen.sfl*",
    "~/Library/Application Support/DrawPen",
    "~/Library/Caches/dmytro.vasin.drawpen*",
    "~/Library/HTTPStorages/dmytro.vasin.drawpen",
    "~/Library/Logs/DrawPen",
    "~/Library/Preferences/*drawpen*.plist",
    "~/Library/Saved Application State/*DrawPen*.savedState",
  ]
end
