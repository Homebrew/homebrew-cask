cask "logseq" do
  version "0.2.8"

  if Hardware::CPU.intel?
    sha256 "79b15d5a6dcca888e0902e45d72a4dde962ad977c9df0f99f46d7aa4fe43a4b9"
    url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-x64-#{version}.dmg"
  else
    sha256 "774a4f71b55c5e3011f632bd21c703529760f76322da456f631d54690752ff5e"
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
