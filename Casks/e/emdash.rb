cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "1.2.7"
  sha256 arm:   "bc05f22407ad4d43a23eacbe474f8cd5de14778da71a6de32e73b4eb682f3a50",
         intel: "e85880ca351b7e3c1e72616eb20fbcac64e329f56285f48f42b7c90fd5edca0d"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Emdash.app"

  uninstall quit: "com.emdash.stable"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.sfl*",
    "~/Library/Application Support/Emdash",
    "~/Library/Logs/emdash",
    "~/Library/Preferences/com.emdash.plist",
    "~/Library/Preferences/com.emdash.stable.plist",
    "~/Library/Saved Application State/com.emdash.savedState",
  ]
end
