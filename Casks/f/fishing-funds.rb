cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.8.0"
  sha256 arm:   "b7e9061f3acac15edb3fe9d5c77b2c2ff82b62f5d3a17bcc616f55fe433c2bcf",
         intel: "b7be8f123d1868169375e42faaf2c31447fb7ff0634305fd0d7410dd24bff085"

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
