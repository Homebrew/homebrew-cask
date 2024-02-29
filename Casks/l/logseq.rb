cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.10.7"
  sha256 arm:   "b8beab545e0595f0bc8a6c8a6e80f40c2a76e7020bcdc732b3bf144f7d856581",
         intel: "e40db9f3c24c8a9f473ff0ccfff45f39d2dd2ca2ed6d18a2500da2c3a2ec1f0a"

  url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-#{arch}-#{version}.dmg"
  name "Logseq"
  desc "Privacy-first, open-source platform for knowledge sharing and management"
  homepage "https://github.com/logseq/logseq"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Logseq.app"

  zap trash: [
    "~/Library/Application Support/Logseq",
    "~/Library/Logs/Logseq",
    "~/Library/Preferences/com.electron.logseq.plist",
    "~/Library/Saved Application State/com.electron.logseq.savedState",
  ]
end
