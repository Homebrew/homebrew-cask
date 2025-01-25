cask "poe" do
  arch arm: "arm64", intel: "x64"

  version "1.1.25"
  sha256 arm:   "4956bf53d064aec578cdf68d357c4fdd25294a894efd3a9c898341711e7bcb12",
         intel: "fccac12f0ad15e167a3fcf8dc9b6839cd3cb3a528697a76c62dae617bcf7688a"

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
