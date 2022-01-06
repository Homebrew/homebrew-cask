cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.5.8"

  if Hardware::CPU.intel?
    sha256 "085ee2ded2d4f1cfcd3cc7ed73b0fd6e266ee6c9cea6a40b337793660c67861f"
  else
    sha256 "ada6d4555c72e09799b117151a1b07563e8728a2872d1595b429dbcd2a8098c1"
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
