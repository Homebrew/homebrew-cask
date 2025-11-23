cask "onlook" do
  arch arm: "arm64", intel: "x64"

  version "0.2.32"
  sha256 arm:   "73a06b8482ac02b5fd2bc3e2253dd7c89eadb617b21ad666aa958288ebf443cc",
         intel: "e357d4defe7c2c962d2b7c6bceac250bf464eede9c023b63814b3a7453a87a96"

  url "https://github.com/onlook-dev/onlook/releases/download/v#{version}/Onlook-#{arch}.dmg",
      verified: "github.com/onlook-dev/onlook/"
  name "Onlook"
  desc "Open-source visual editor for React apps"
  homepage "https://onlook.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Onlook.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.onlook.studio.sfl*",
    "~/Library/Application Support/Onlook",
    "~/Library/Logs/Onlook",
    "~/Library/Preferences/dev.onlook.studio.plist",
  ]
end
