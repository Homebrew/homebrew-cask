cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.43"
  sha256 arm:   "53fcd644ea8bc46dcbe07fd9a05c2595c1388a070d8392276c3a27774c5ccdea",
         intel: "6644c798b9006a9c6135cf19f32b3b0831a7e309404c819868cf58745eacaed2"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  depends_on macos: ">= :big_sur"

  app "emdash.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.sfl*",
    "~/Library/Application Support/Emdash",
    "~/Library/Logs/emdash",
    "~/Library/Preferences/com.emdash.plist",
    "~/Library/Saved Application State/com.emdash.savedState",
  ]
end
