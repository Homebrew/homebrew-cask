cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.62"
  sha256 arm:   "d4b0fe81e7e651226f758cce98eff8a7676adfccb25344eb6b4a3da070452316",
         intel: "8e4cd6425f1c6a5cc95f0893a2a511754123103587b8e88e264640299f46101c"

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
