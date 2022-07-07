cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.7.6"

  if Hardware::CPU.intel?
    sha256 "1f6e892e89aab97713d5301dc13e4b2364ee44b9b75689281434c332dffe0723"
  else
    sha256 "347ff2737cf48106d2292d5b23619c875e5644ded54a4d706627df2ba889cba5"
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
