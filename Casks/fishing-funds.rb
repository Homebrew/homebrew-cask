cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.1.0"
  sha256 arm:   "bd0395ef7ca7f327d43f4eabba199acdabdd2c1bea69f68a71d52a1622dbc4c8",
         intel: "58b98c46a3001522b4f56ce687345b62ec56667ae4df7f3b480078425f33279c"

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
