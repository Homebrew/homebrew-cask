cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "1.1.38"
  sha256 arm:   "a46171ca2c28cff5ac979e827078eb39e3c825945917e757ddfd11b415b3d058",
         intel: "710eb02db09409d2214b82907ec399ca851838a94da8f68f8c9e61acdc3a3881"

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
