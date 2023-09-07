cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.17"
  sha256 arm:   "9eeebf188d3fad3571a6138279b31ee977aeebf9444ba73ebb7693015e2f300d",
         intel: "30bae0cbf91c1bc5512c79fa589d4d369e7e9ca62a622fcf443abca8257f2fcf"

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
