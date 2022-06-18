cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.7.4"

  if Hardware::CPU.intel?
    sha256 "08010df058d8ba6f681c715d83ef15d64ba3e9636e517cc5a34722e0406fa7b6"
  else
    sha256 "e94a55760d5643709205c8ee449f73ae147a16be0862bee8bf95b395602b09f4"
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
