cask "tamery" do
  arch arm: "arm64", intel: "x64"

  version "0.99.5"
  sha256 arm:   "13fc5aded610bd4d5cbbd3ee5c336d958ab53508f48c8000d69c7d2b21be8fd2",
         intel: "7840a1352894cb4854a38f13a9705bec0fb5e6e9b8f9a513fb7c58e28901f01b"

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
