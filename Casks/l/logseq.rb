cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.10.15"
  sha256 arm:   "a0b83e5bdc2b8bb639cec5747cedcc0f0a8cd840ca6fa0d44242dc05312d27cb",
         intel: "adad3a8d50692a79b2643b6c4d36d29ea0cc9d4123f3b48b5f72790a9ec5aca9"

  url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-#{arch}-#{version}.dmg"
  name "Logseq"
  desc "Privacy-first, open-source platform for knowledge sharing and management"
  homepage "https://github.com/logseq/logseq"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Logseq.app"

  zap trash: [
    "~/Library/Application Support/Logseq",
    "~/Library/Logs/Logseq",
    "~/Library/Preferences/com.electron.logseq.plist",
    "~/Library/Saved Application State/com.electron.logseq.savedState",
  ]
end
