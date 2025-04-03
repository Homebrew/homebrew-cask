cask "poe" do
  arch arm: "arm64", intel: "x64"

  version "1.1.31"
  sha256 arm:   "7399f4e3c6add95daa0826918922098f0da015c3855b65cd0caea7b2d300c2ec",
         intel: "4521505b4a8341fe2c18e193f1d4ea9801dfb29f1905f1e8b3b69638fff92c47"

  url "https://desktop-app.poecdn.net/updates/darwin_#{arch}/#{version}.zip",
      verified: "desktop-app.poecdn.net/updates/"
  name "Poe"
  desc "AI chat client"
  homepage "https://poe.com/"

  livecheck do
    url "https://updater.poe.com/darwin_#{arch}/0.0.0"
    regex(/v?(\d+(?:\.\d+)+)\.zip/i)
    strategy :json do |json|
      match = json["url"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on macos: ">= :big_sur"

  app "Poe.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.quora.poe.electron.sfl*",
    "~/Library/Application Support/Poe",
    "~/Library/Application Support/poe-electron",
    "~/Library/Caches/com.quora.poe.electron",
    "~/Library/Caches/com.quora.poe.electron.ShipIt",
    "~/Library/HTTPStorages/com.quora.poe.electron",
    "~/Library/HTTPStorages/com.quora.poe.electron.binarycookies",
    "~/Library/Preferences/com.quora.poe.electron.plist",
    "~/Library/Saved Application State/com.quora.poe.electron.savedState",
  ]
end
