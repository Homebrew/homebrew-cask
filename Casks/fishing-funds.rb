cask "fishing-funds" do
  arch arm: "-arm64"

  version "7.0.1"
  sha256 arm:   "c211f7799394f22ca8d3eb31ea7c0fc3a68a0a713ae15417ed0129226412368c",
         intel: "f8f730f6547d9ed467373927e8f48828b7c538e975a6a58423559db4c4d35546"

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
