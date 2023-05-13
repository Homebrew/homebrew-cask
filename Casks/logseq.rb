cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.6"
  sha256 arm:   "bc71e2bd7a19bb3874ef19e6b90077b77c0fce73661c9b564e2bc09ed1ab7444",
         intel: "d49b5783a4b4b5dfbe3b4c7c9736fb1761c973ac3f098c41e64ac807c65dec8f"

  url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-#{arch}-#{version}.dmg"
  name "Logseq"
  desc "Privacy-first, open-source platform for knowledge sharing and management"
  homepage "https://github.com/logseq/logseq"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Logseq.app"

  zap trash: [
    "~/Library/Application Support/Logseq",
    "~/Library/Logs/Logseq",
    "~/Library/Preferences/com.electron.logseq.plist",
    "~/Library/Saved Application State/com.electron.logseq.savedState",
  ]
end
