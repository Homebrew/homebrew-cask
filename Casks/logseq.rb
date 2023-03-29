cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.0"
  sha256 arm:   "2a8a0a2bcd2565e644be88a306fc308a53f254f2aca5188839ddd9ac3a0efa85",
         intel: "c60e335e2a56a50518e2789e3e9465a59122cfdc83d7f293f264ae5c54cf0feb"

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
