cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.16"
  sha256 arm:   "ff509c81d1d18dcb4e859567cbd120e364aed407f524454b4030a617a8bef32a",
         intel: "e106f17c28083d4a4d5cf45cded425037350b4c5dd3e235213438a195e03fc44"

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
