cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.4.7"

  if Hardware::CPU.intel?
    sha256 "5be35c798aec7d772d8bdbcd0f1531c082dc8573cf306fba94123eb3bbf3c3ad"
  else
    sha256 "b81b9dd9bb48a9d572a2e7f9f2589bf1189d9ca72ab206d770a6bd0731ad6611"
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
