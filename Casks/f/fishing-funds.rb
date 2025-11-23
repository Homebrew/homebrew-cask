cask "fishing-funds" do
  arch arm: "-arm64"

  version "8.7.1"
  sha256 arm:   "01a4f6661b866e0a113928392b54b4f95ffe4239c1ac77a5fb6cd2efabd4c2e2",
         intel: "2a0875cce027236f62a8a21de43a27e0cdd325dde5570017a844535b6b862af2"

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
