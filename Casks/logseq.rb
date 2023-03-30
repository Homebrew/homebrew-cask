cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.1"
  sha256 arm:   "80082517aa3d0e537c1d372041875377d98875cde3150bef8985c981aa71639f",
         intel: "d030dd93ce4233d635898b025e1e08f770f25c3581ce2e8b618d064e2b09a264"

  url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-#{arch}-#{version}.dmg"
  name "Logseq"
  desc "Privacy-first, open-source platform for knowledge sharing and management"
  homepage "https://github.com/logseq/logseq"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Logseq.app"

  zap trash: [
    "~/Library/Application Support/Logseq",
    "~/Library/Logs/Logseq",
    "~/Library/Preferences/com.electron.logseq.plist",
    "~/Library/Saved Application State/com.electron.logseq.savedState",
  ]
end
