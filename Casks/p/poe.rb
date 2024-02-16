cask "poe" do
  arch arm: "arm64", intel: "x64"

  version "1.1.15"
  sha256 arm:   "d8a5d364b2f10cf84ed3807ee5e991927e184a331f9d65b1a2f8b92902f6919e",
         intel: "c56d9de77c7c12d6a498195423eb312906bf86b7818467aee65ba479e7ba9c5e"

  url "https://desktop-app.poecdn.net/updates/darwin_#{arch}/#{version}.zip",
      verified: "desktop-app.poecdn.net/updates/"
  name "Poe"
  desc "AI chat client"
  homepage "https://poe.com/"

  livecheck do
    skip "No version information available"
  end

  depends_on macos: ">= :high_sierra"

  app "Poe.app"

  zap trash: [
    "~/Library/Application Support/poe-electron",
    "~/Library/Caches/com.quora.poe.electron",
    "~/Library/Caches/com.quora.poe.electron.ShipIt",
    "~/Library/HTTPStorages/com.quora.poe.electron",
    "~/Library/HTTPStorages/com.quora.poe.electron.binarycookies",
    "~/Library/Preferences/com.quora.poe.electron.plist",
    "~/Library/Saved Application State/com.quora.poe.electron.savedState",
  ]
end
