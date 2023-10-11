cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.19"
  sha256 arm:   "725f46bd13554fec34ebbe3953c0b4c069abf28793d3dd64974809bb50388eb9",
         intel: "b398c7842522e1e0ca8e26489816eceb5ae779299f0de5d505bc186852ae0d9a"

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
