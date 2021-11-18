cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.4.8"

  if Hardware::CPU.intel?
    sha256 "c60431c8251f58f0a372e5e3f52a2e28ff61bf2d43bcfe238b4e7fa59638458d"
  else
    sha256 "12c41fc9a088ec51818dc638d15fafb528e135def152e17193b1e90ed8788209"
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
