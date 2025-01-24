cask "poe" do
  arch arm: "arm64", intel: "x64"

  version "1.1.24"
  sha256 arm:   "c14b5b44ac8966604e95cadf0da68a68e9dd9ee0d2add676fb8ac88c0348de0e",
         intel: "6f7e3e36130f5a31b996ac0420712dfe53106ed1939df908608f88218192b391"

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
