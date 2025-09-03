cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.6.0"
  sha256 arm:   "6c9f076671f8c9e74417d46db719c8a012225a2e836a9aabd3a96b6297c2280c",
         intel: "180a0590cb2eaa788037876d549053e14ca99beae17624d600910905e5bae94e"

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
