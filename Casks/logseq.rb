cask "logseq" do
  version "0.2.1"

  if Hardware::CPU.intel?
    sha256 "935e1512df2fcef8079ebdd5b22a8dacc65c1e0f2376c80263d62857fe41fc55"
    url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-x64-#{version}.dmg"
  else
    sha256 "a0b7dd29bae5df81ea5352dd89559db7a0319de43c6d9f0ae7b0e80908fb3ba3"
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
