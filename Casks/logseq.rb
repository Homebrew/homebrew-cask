cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.7.8"

  if Hardware::CPU.intel?
    sha256 "7905893c26d8256686dcaba006dc5f2ad1907a9936074a76bf7e268caea0dd0b"
  else
    sha256 "5126eb71bb122dc6f2150f3753759e78894c179014e1f0096e7c5e213198e7ef"
  end

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
