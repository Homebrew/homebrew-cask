cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "1.2.3"
  sha256 arm:   "6533c75907aa45cda1cbaa6733b30391a6c6e6918aa3ac75999ae6b95fd5d30f",
         intel: "d1084f1e7ef2d15fde1f87d12f2bc7f1ed03482f93302d91c235f0a199dca22b"

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
