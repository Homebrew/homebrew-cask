cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.12"
  sha256 arm:   "be997998ec3a1e714312f065d684d3126240fdbbe0a4ae3a583207b94707b846",
         intel: "35e0e611dcd60d0bfe854ea2e2a87edb6475a2b0ba57c807ddf5b369f37dfd9d"

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
