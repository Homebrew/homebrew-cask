cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.5.1"
  sha256 arm:   "68bee90bb42c0982be326b7b13405cdbfe1cc818d25e9ad988b906b7d2701c08",
         intel: "96ba3224e68622ad5285ca071a208a7f54542e66b3f3f5f2de55e7dfe785b4f7"

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
