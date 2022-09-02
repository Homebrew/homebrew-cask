cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.4"
  sha256 arm:   "40804dd86178521e401591b8e2d0c28b116a68c18d26891c1fc336b2f75ded86",
         intel: "648f749e713816c7c5ccfa9dd21b0967de69999157a1125b71af20aef0d81574"

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
