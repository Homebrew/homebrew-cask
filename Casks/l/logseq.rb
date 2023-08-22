cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.15"
  sha256 arm:   "b93ae09263d8bdf65ce85cccb836218b97eb03ab7b6f823c31563d939eb59d81",
         intel: "5a75c986ce71eca5bf7f756bf9580ed923eb661e0dbd03747d5b3e0ef225b36f"

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
