cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.61"
  sha256 arm:   "ddfe94c59019484888f0f27715afa59fad95ddd27ba5a2d69b54ce07ffbb7826",
         intel: "2c11bf90613a02c0bb560359eab74542b0d116350d1cdb671143024c635a5ad6"

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
