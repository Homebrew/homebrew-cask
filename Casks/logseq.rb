cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.18"
  sha256 arm:   "1d41d27ee52316e16cd6637bb7a7421e5969f8ee6075b0fca7ef5aecb3506cd5",
         intel: "34bd7f31e61f4212da4b66c50e30b94d428a2004c11395835d0884bdc2d75a16"

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
