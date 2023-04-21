cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.3"
  sha256 arm:   "42c223b2a41e499ada7355ec6f4472ac5f4ab2db635834d11396846081f0f2c3",
         intel: "1b487ac004d6d1609e41cb58b3c1839d8bb844abd6bd4a9abda9073dffdbc28e"

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
