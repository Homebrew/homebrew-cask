cask "tamery" do
  arch arm: "arm64", intel: "x64"

  version "0.99.6"
  sha256 arm:   "e888941ffda6e56603cb6d485b23825d8f40c15ae6fb462fc632f66ff99c86c5",
         intel: "33d329c1fa4ecdfcbb8b52fec7e308e3b868b7d5466d27957ba6678adf384e58"

  url "https://download.tamery.app/versions/#{version}/mac/dmg/#{arch}"
  name "Tamery"
  desc "AI-powered database client"
  homepage "https://tamery.app/"

  livecheck do
    url "https://download.todesktop.com/2610172p48e2t/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Tamery.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wannabespace.tamery.sfl*",
    "~/Library/Application Support/Tamery",
    "~/Library/Caches/@tamerydesktop-updater",
    "~/Library/HTTPStorages/com.wannabespace.tamery",
    "~/Library/Preferences/com.wannabespace.tamery.plist",
    "~/Library/Saved Application State/com.wannabespace.tamery.savedState",
  ]
end
