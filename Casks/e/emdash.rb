cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.32"
  sha256 arm:   "5f60e99079314f3ee980b84b511902f4cd9f6c702b174dfce731ca27744b325f",
         intel: "4a5fd104c6ec7422e5fb8c3f80f87280bae3d13509e7370f9be50eda1e0bf428"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  depends_on macos: ">= :big_sur"

  app "emdash.app"

  zap trash: [
    "/Library/Logs/emdash",
    "/Library/Saved Application State/com.emdash.savedState",
    "~/Library/Application Support/emdash",
    "~/Library/Preferences/com.emdash.plist",
  ]
end
