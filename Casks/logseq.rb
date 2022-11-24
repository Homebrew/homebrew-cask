cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.11"
  sha256 arm:   "86331d91adcd900c334bf646412922d8db6c134548928ca6fb90e24938cf6923",
         intel: "f3977d921b0d25eeaa622699c11a1c6db89da1d691f8d4295c87c0667b6b2310"

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
