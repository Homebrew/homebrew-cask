cask "poe" do
  arch arm: "arm64", intel: "x64"

  version "1.1.2"
  sha256 arm:   "7627a824501b97494ec3318223e624f4557e438e41b8c356da56eccd703cbe39",
         intel: "c55396820209f69f7d1c0ac019bce5677902247f3d592534c391f818229f4ae0"

  url "https://desktop-app.poecdn.net/updates/darwin_#{arch}/#{version}.zip",
      verified: "desktop-app.poecdn.net/updates/"
  name "Poe"
  desc "AI chat client"
  homepage "https://poe.com/"

  livecheck do
    url "https://updater.poe.com/darwin_#{arch}/0.0"
    regex(/updates.*?(\d+(?:\.+\d+)+)\.zip/i)
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
