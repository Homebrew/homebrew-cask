cask "poe" do
  arch arm: "arm64", intel: "x64"

  version "1.1.26"
  sha256 arm:   "4d3b8421cccb8e3ec69126c6c666018672a376a18e6507c3aec30c0152b5a8a2",
         intel: "80ee71bcbc8fd7f1bf02baaadf91c7663a91d5b2bdaedc7149af619394be7d5d"

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
