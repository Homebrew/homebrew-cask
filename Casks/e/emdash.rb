cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.3.48"
  sha256 arm:   "cf2999fb9cc3d99faecb7cc82b1fc4ab28cbb64f2ff698e2b24ce7a5cadabb80",
         intel: "06c4f150e00f37f732fa5d49ba9fd27eea6338efabebd0761e7a19b47037c014"

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
