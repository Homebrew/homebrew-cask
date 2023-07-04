cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.10"
  sha256 arm:   "bdaf9d4b2ad34196b17595574d27b0ad675c9a63c200715365582105915fb901",
         intel: "b7795ddc1f6adae00a1642852dc34d2c27fa8426646c120301f3c89bc7a284fc"

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
