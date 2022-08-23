cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.2"
  sha256 arm:   "cb15f2b54977dcea3aec926846e656fefd7fa9435c9cf651be99119d16c9fc5e",
         intel: "a1c1c5b1bdc42324db5be94a83c570c48a950129ee112ca91676c6e359ac5b22"

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
