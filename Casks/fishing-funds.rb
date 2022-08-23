cask "fishing-funds" do
  arch arm: "-arm64"

  version "6.2.2"
  sha256 arm:   "f88f88ea326b2605cbaba4d8b837e0a8dd6497f6c209b42fb8c29c15eec4a7ec",
         intel: "9ec3b8358db25252db93f902f6f14d50029a31516052a9f9017385c7f02294e4"

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
