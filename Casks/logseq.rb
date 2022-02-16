cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.5.9"

  if Hardware::CPU.intel?
    sha256 "235fea0932eaf4dca42b69bf91ae2bb2a09bd859e1944843444e834562607a88"
  else
    sha256 "9387a0867b9ed626eb05fd513be2f5e63265fb6095e8b24cfb31c3643a51579e"
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
