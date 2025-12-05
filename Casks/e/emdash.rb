cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.36"
  sha256 arm:   "4a915952a3d79df58e83be8d790ac3b8f2027ccdbd70f0762dad491996712cc1",
         intel: "0070f6cbf543fe63337775498c08672288b696d39e849ff236db219364362a13"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  app "emdash.app"

  zap trash: [
    "/Library/Logs/emdash",
    "/Library/Saved Application State/com.emdash.savedState",
    "~/Library/Application Support/emdash",
    "~/Library/Preferences/com.emdash.plist",
  ]
end
