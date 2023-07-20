cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.11"
  sha256 arm:   "89d30b42f00c8dae47a10c41f38f44ee3e77b1a889eb1031e47023fe7283b59c",
         intel: "c8e1169aba0dfb9cbe4fc81aa4c53d89fb504f6e41b36142864d68d93163bda5"

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
