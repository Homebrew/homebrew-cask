cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.4.3"

  url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-#{arch}-#{version}.dmg"
  if Hardware::CPU.intel?
    sha256 "5ad1f9f2469cb3bbd7fe8e1aefddc4f61da1d4096db3f16a7e7dd0feda4f7e95"
  else
    sha256 "79f6192a9755b24cb3db82801f040eef1e894a6802dc9bbcf192b15a98b17e6e"
  end

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
