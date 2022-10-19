cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.9"
  sha256 arm:   "1f53df836139b1393a0eea25dabcd565002f0ea05fec8ba4e60d0156d4de16c5",
         intel: "1e3b9b8674eb5ad7377f8fae6e849b96de738d8ff89caba4c8ca1cae01d50f23"

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
