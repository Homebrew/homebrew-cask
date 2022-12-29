cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.15"
  sha256 arm:   "c03e05b60219f5a4851ceef0497e273e84fe3d2ef9629d09e5f92b847a9b9306",
         intel: "d0883270c5a95d012da744f06f0be9b38fef1179aaddde5ac874bd5b50c0c4d1"

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
