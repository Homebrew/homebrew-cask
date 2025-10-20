cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.7.0"
  sha256 arm:   "9e08ec58a2b50e0365e4e9d3eb15b62bab856eaec69737d02a1b4f5c3d916a7b",
         intel: "835cfcbe800a793ec9f2bbbd8191626f31895e1766e9c81244b5e3106cd50bb6"

  url "https://github.com/1zilc/fishing-funds/releases/download/v#{version}/Fishing-Funds-#{version}#{arch}.dmg",
      verified: "github.com/1zilc/fishing-funds/"
  name "Fishing Funds"
  desc "Display real-time trends of Chinese funds in the menubar"
  homepage "https://ff.1zilc.top/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "Fishing Funds.app"

  zap trash: [
    "~/Library/Application Support/Fishing Funds",
    "~/Library/Logs/Fishing Funds",
    "~/Library/Preferences/com.electron.1zilc.fishing-funds.plist",
  ]
end
