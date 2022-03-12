cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.6.3"

  if Hardware::CPU.intel?
    sha256 "cd86be0210273750c77958f2e24bbf056735ff4748af2780818fa538cdf2240a"
  else
    sha256 "302ce938571da71ce2f4c0c1fff2fc7059cbe50e219f6192bfdb583bc272df64"
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
