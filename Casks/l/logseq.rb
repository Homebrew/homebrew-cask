cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.18"
  sha256 arm:   "36a439eee9f941809fa15ea29ab59ceb1b270d0cdffed1c8fe3a8d63da3f8cf1",
         intel: "428ab393fe30fa3b98d45699c7c019dad7d9222dffe95c578ce82ba8e91f1713"

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
