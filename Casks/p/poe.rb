cask "poe" do
  arch arm: "arm64", intel: "x64"

  version "1.1.9"
  sha256 arm:   "afd38fb604fa195c4ad34add7cd6a2952a770033d12967619aa8e6fe94fecfa3",
         intel: "60b76d4911dd533095bd5d6084a3dd6b3f41377ee70e7a7a30e1da8a7d220f99"

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
