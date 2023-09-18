cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.1.0-legacy"
  sha256 arm:   "a6296b20cd518f2afdd3e21ca68fe6c8ca258659f556ce80b4a6e406e7dd5a92",
         intel: "7d122a2bfa4a3fff5fbfd36a09d14b183e7233427b288b8d25d161e808dbb4c3"

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
