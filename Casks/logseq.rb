cask "logseq" do
  version "0.1.8"

  if Hardware::CPU.intel?
    sha256 "6ed77d1e91d0814d6c34a162f51412548a09bc6ef0540c41e8a9e715466363b0"
    url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-x64-#{version}.dmg"
  else
    sha256 "47f5b138a05a61ab6307e0c3490b57392b91bce7de8dd4e36aaf9e3be91b4e2f"
    url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-arm64-#{version}.dmg"
  end

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
