cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.4"
  sha256 arm:   "3a4e95c412dfdca7fcc92fa6bc941ab6dea103b02f5ffae233a750a37c53862b",
         intel: "06da13cb8cd42840d67f95163cf5cf51819aa892125466a709518796955ccfba"

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
