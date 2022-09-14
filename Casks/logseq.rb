cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.6"
  sha256 arm:   "dcd56ab5fca0e45f292b0286d7d4b10aaf43a49cff56bc9ff41f581b9a6392a3",
         intel: "a8df76be2cba4ecbb657e2be3ff91723b80517ecf5449d3f95a9d4de1ad1e716"

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
