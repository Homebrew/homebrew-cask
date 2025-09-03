cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.6.1"
  sha256 arm:   "0a8c6f48c5c27f050fe47161346b76d31944d00f58c094a15e9fe1a6dab650c9",
         intel: "bdcacc4b06e6c5d9efedd0d7f513932aa24ce7e9aed608d2e4ad81f8a0da10cb"

  url "https://github.com/1zilc/fishing-funds/releases/download/v#{version}/Fishing-Funds-#{version}#{arch}.dmg",
      verified: "github.com/1zilc/fishing-funds/"
  name "Fishing Funds"
  desc "Display real-time trends of Chinese funds in the menubar"
  homepage "https://ff.1zilc.top/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "Fishing Funds.app"

  zap trash: [
    "~/Library/Application Support/Fishing Funds",
    "~/Library/Logs/Fishing Funds",
    "~/Library/Preferences/com.electron.1zilc.fishing-funds.plist",
  ]
end
