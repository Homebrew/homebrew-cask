cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.6.2"
  sha256 arm:   "5e063fbcefada24a51cae22c1b49b584c37f47ee130bf3cf00ada7a78e39dbdb",
         intel: "6be7de87e291a2a5443572075995c031049b09c146aa603a2ba5b1ca296fbaf8"

  url "https://github.com/1zilc/fishing-funds/releases/download/v#{version}/Fishing-Funds-#{version}#{arch}.dmg",
      verified: "github.com/1zilc/fishing-funds/"
  name "Fishing Funds"
  desc "Display real-time trends of Chinese funds in the menubar"
  homepage "https://ff.1zilc.top/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "Fishing Funds.app"

  zap trash: [
    "~/Library/Application Support/Fishing Funds",
    "~/Library/Logs/Fishing Funds",
    "~/Library/Preferences/com.electron.1zilc.fishing-funds.plist",
  ]
end
