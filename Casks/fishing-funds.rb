cask "fishing-funds" do
  arch arm: "-arm64"

  version "7.2.0"
  sha256 arm:   "e314bf73f965d9aeedb83ba0961432f733a863e436fc9dc3ec3ed1082dc30e22",
         intel: "47b2a4adc8dba9875b93558f051348492272098775b92a39704f6ace14d20788"

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
