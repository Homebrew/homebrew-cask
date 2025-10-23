cask "poe" do
  arch arm: "arm64", intel: "x64"

  version "1.1.37"
  sha256 arm:   "445622b205f4fea8dc50d2764c8e1b3304ab3f0bb9d913063f6e075163ef7653",
         intel: "aca6ab1f716dae12cd0a76f9a7ad8764f17ae1d68389c762c792aec4ea8a3aee"

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

  depends_on macos: ">= :monterey"

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
