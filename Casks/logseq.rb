cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.9.5"
  sha256 arm:   "249598a2a2dc6ace1971a79351e53d7b40763171abb9ef9b8005a26dde3221b3",
         intel: "2b08fc12cd8166d8154a3709bf3484a98ddd695ed7f5e4316f19ef5266fb01d0"

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
