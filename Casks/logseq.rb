cask "logseq" do
  version "0.4.1"

  if Hardware::CPU.intel?
    sha256 "67d3a85847f3e23a7c3b25dfc057b6cfe8cad35a9e47b4254cd3368caafe7e9e"
    url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-x64-#{version}.dmg"
  else
    sha256 "4ef12ed8a9f60a09f3cb12e889c7cd7c9c876f90fd0693feee3e9ecea5d3302a"
    url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-arm64-#{version}.dmg"
  end

  name "Logseq"
  desc "Privacy-first, open-source platform for knowledge sharing and management"
  homepage "https://github.com/logseq/logseq"

  auto_updates true

  app "Logseq.app"

  zap trash: [
    "~/Library/Application Support/Logseq",
    "~/Library/Logs/Logseq",
    "~/Library/Preferences/com.electron.logseq.plist",
    "~/Library/Saved Application State/com.electron.logseq.savedState",
  ]
end
