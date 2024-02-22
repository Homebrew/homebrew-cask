cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.2.0"
  sha256 arm:   "6fae96ceaa0092e7912230a43f8f423e1d4c1954a1e7af7b0e9c4f4875eab1a0",
         intel: "6ccb1a483b119267a182ac28487a9ca85d24972fdf43d91a8104586e251a3915"

  url "https://github.com/1zilc/fishing-funds/releases/download/v#{version}/Fishing-Funds-#{version}#{arch}.dmg",
      verified: "github.com/1zilc/fishing-funds/"
  name "Fishing Funds"
  desc "Display real-time trends of Chinese funds in the menubar"
  homepage "https://ff.1zilc.top/"

  app "Fishing Funds.app"

  zap trash: [
    "~/Library/Application Support/Fishing Funds",
    "~/Library/Logs/Fishing Funds",
    "~/Library/Preferences/com.electron.1zilc.fishing-funds.plist",
  ]
end
