cask "tamery" do
  arch arm: "arm64", intel: "x64"

  version "0.99.2"
  sha256 arm:   "f310735618786239d324b5596ba36441e8cc9cec56b42df5a0470fc6f0445d53",
         intel: "db5322a2ebc212e54b6838a69a10138156ef2e0fa54cfe736e4c2a94a276a4f4"

  url "https://download.tamery.app/versions/#{version}/mac/dmg/#{arch}"
  name "Tamery"
  desc "AI-powered database client"
  homepage "https://tamery.app/"

  livecheck do
    url "https://download.todesktop.com/2610172p48e2t/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

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
