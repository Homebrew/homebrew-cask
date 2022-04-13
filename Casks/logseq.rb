cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.6.5"

  if Hardware::CPU.intel?
    sha256 "32273c479d05a763a67e9121ba548aaf398da8a15ab98116a281b296d02c7f17"
  else
    sha256 "d2e388b4984712e80d20635fe7a114a48d001521f2749b3ff64cf23be6a8cbc3"
  end

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
