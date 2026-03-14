cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.34"
  sha256 arm:   "9cf8309fa41b1cf1c8e79d7247968978402860a7dd68d848443a07bc4cc4e9c4",
         intel: "a0ab63ccbe4ab45c2d423036d4e4ed3c20c446f700c0608470d3538a577984eb"

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
