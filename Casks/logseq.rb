cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.7.5"

  if Hardware::CPU.intel?
    sha256 "eb8cb9a7466946ece269619d60e3348d0cecdbce3858d4e9bee647dcf1c835af"
  else
    sha256 "eb3ad18380520ea2e8647cd2fffc15b4debe06050007cbdc4b08588d52bea2c1"
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
