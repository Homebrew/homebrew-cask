cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.3"
  sha256 arm:   "23bab9f5da257c2e2cf9d65b595d474fe1033785490f352cae395762c0c76f41",
         intel: "f61cae5a3ca5ffee15e23672c16390eee4d605fe9a44c9bbd620dc98fa933b36"

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
