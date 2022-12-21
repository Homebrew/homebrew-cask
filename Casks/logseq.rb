cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.14"
  sha256 arm:   "5c93242aab4aa55fbc01ce7a660108376ed54d97f1d7ba88c44a9fa51ebc64e0",
         intel: "a002d89d884aacfbf85bd144207c7a0e49701fce145758e20845c51bca481336"

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
