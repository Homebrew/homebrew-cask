cask "poe" do
  arch arm: "arm64", intel: "x64"

  version "1.1.17"
  sha256 arm:   "70cf6c0cb1d41cd9cc11c7e32390f4ba1b2ca4fd3b0132d590f657cbeb739c54",
         intel: "fba9bbe3dd224706405a34350a84773dbd5262c248716d6bfb2ca7931b1fbf49"

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
