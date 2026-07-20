cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "2.0.1"
  sha256 arm:   "b76af25384f8aaa0ba322f8b5523aea712d9750d9f3e79cac55dc783796439cd",
         intel: "d94ab1223db5e6d75d073b938eb0bf4606f3b2a9b37f307b91dba1322c8d34c2"

  url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-#{arch}-#{version}.dmg"
  name "Logseq"
  desc "Privacy-first, open-source platform for knowledge sharing and management"
  homepage "https://github.com/logseq/logseq"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Logseq.app"

  zap trash: [
    "~/Library/Application Support/Logseq",
    "~/Library/Logs/Logseq",
    "~/Library/Preferences/com.electron.logseq.plist",
    "~/Library/Saved Application State/com.electron.logseq.savedState",
  ]
end
