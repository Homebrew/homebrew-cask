cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.1"

  on_intel do
    sha256 "29f59ee297fe89aa31fca3624101d6f17d98872e2c4141d39e9f9ce83989a8e9"
  end
  on_arm do
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
