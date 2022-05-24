cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.7.0"

  if Hardware::CPU.intel?
    sha256 "a8a9b69a6eb9ebd47fc5e0d6d5da0fb700896e3eefd4f3829a420e1de5dc211e"
  else
    sha256 "3a8e66cb1ca41cc949903f0961128ce2e1709de71c442b15ae2b6c7b2aca0cc7"
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
