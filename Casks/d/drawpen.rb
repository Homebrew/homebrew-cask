cask "drawpen" do
  arch arm: "arm64", intel: "x64"

  version "0.0.60"
  sha256 arm:   "4248a78f6f0cb35c869102b8cbe81d0c023af4c61a998024e48eeb78ff0db7ca",
         intel: "2584d400fb560cf99b44d532f5080ea3825bc0f0a9fe524b42f3c7e4aade4a55"

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
