cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.8.0"

  if Hardware::CPU.intel?
    sha256 "f5268e716636e981ea5d6d88bf638c9179261a158b793b8394ec74e5e3cd2a75"
  else
    sha256 "aef0809d98795f9ba38c68be07d43538fb680141dd4eecfc330c6b346249ff57"
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
