cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.16"
  sha256 arm:   "40173cf475809ff753e36fb58c0b76021d84ff0c63eeb8a98ec2d8cdcf9ca3f2",
         intel: "46c1e6663369b2f5facc905d55e1198f59ed2a80960bb751d7d305bdedd4e2b1"

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
