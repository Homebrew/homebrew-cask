cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "1.1.37"
  sha256 arm:   "0740fd9d0bbad59c2fb5024d8c8d7ad48e9348722135d9bfde54a3090d86e3dc",
         intel: "6212af34f13d801048993ac19e7a166d3290bd44f32a9e69690b4f0c6252804a"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "emdash.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.sfl*",
    "~/Library/Application Support/Emdash",
    "~/Library/Logs/emdash",
    "~/Library/Preferences/com.emdash.plist",
    "~/Library/Saved Application State/com.emdash.savedState",
  ]
end
