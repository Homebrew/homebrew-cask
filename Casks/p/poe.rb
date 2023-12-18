cask "poe" do
  arch arm: "arm64", intel: "x64"

  version "1.1.13"
  sha256 arm:   "edd276ca52abe4650e636568d2e0344e70b6c016235e4f47ce123465e5950237",
         intel: "70c4a3b634aadf435e9738a4cff7a4e639fd09ccf36449768748a61015c7b4d5"

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
