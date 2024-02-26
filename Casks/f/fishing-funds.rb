cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.2.1"
  sha256 arm:   "548c1de33bdcf1181aad314e3ca37ec79745dde7c9f316fb984912a26ad3ba8e",
         intel: "b6f876793e1deca5ccc7832cf5cfa79414f9cd9d5eaea72d719a888415f85ed7"

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
