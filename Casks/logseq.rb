cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.5.6"

  if Hardware::CPU.intel?
    sha256 "de09cf05cb004e4ecb98b57c2237bd3138c5fc2e2566596e0c24c875251306ad"
  else
    sha256 "fdcb8086ff2575b87975c6cd5e5b1eba990e18bebbca34c05791af36fd484d8c"
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
