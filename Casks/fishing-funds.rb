cask "fishing-funds" do
  arch arm: "-arm64"

  version "7.3.0"
  sha256 arm:   "91772a2719cde29cdb76837497f3589bb3f3f022a600000d5d7fbcd79f92e962",
         intel: "98f736bf1e4552fd0a075116fe6f9664cdfbdd2bfc8fd34e0a464754b909a5e4"

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
