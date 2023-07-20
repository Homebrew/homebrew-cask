cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.0.0"
  sha256 arm:   "5f0c476ff9a10f19d606a12ddb7838a3b5caecf08dd7be0d5aefd440bff5dba5",
         intel: "29bd5705ff949ad5984774b4be55414731f47d176bcfaca04d1b53157b6a2653"

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
