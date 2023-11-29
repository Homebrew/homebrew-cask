cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.10.0"
  sha256 arm:   "75454a6f00ce6f3a4f476e0ee38b2584d89a3da56e171a34e3a4a90b270c9bcd",
         intel: "e73ea476c1ae0f94d3bca53d3255d4d0263c0cc6c0e1cead6a6a14acd87dd8cd"

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
