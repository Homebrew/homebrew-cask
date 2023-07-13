cask "poe" do
  arch arm: "arm64", intel: "x64"

  version "1.1.1"
  sha256 arm:   "0ef78ba048be820939188d10fc1025a66727fd4a7983bd45762c4781c46854e5",
         intel: "71f8be93c8d6f91b0c60c089884f334422ce20000c96dc0e1ae8674b2ced33e3"

  url "https://desktop-app.poecdn.net/updates/darwin_#{arch}/1.1.1.zip",
      verified: "desktop-app.poecdn.net/updates/"
  name "poe"
  desc "AI chat client"
  homepage "https://poe.com/"

  livecheck do
    url "https://updater.poe.com/darwin_#{arch}/0.0"
    regex(/updates.*?(\d+(?:\.+\d+)+)\.zip/i)
  end

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
