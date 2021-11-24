cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.5.0"

  if Hardware::CPU.intel?
    sha256 "193688782d10b73396ee7f5daa9f39e35de260676445626f28566265e29b3252"
  else
    sha256 "d25060ce85af8ba176921fca214cc626a334b5a5514ee35bc5e7aa9ba4d6954d"
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
