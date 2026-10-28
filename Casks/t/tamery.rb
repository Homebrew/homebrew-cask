cask "tamery" do
  arch arm: "arm64", intel: "x64"

  version "0.99.3"
  sha256 arm:   "7ebb745554f8fc569c12b1c42a73494d37a38ccefc2a7c38c16b080f30cf229e",
         intel: "18f7f9905e8796ca816eefd9d9550e1356676383222a70b9feececefc59c3f78"

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
