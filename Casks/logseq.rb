cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.10"
  sha256 arm:   "b5c6197641f84b53ef739cb37dd8bfe291cbafdc4a415b435ef226098b1b40fb",
         intel: "49568613f3fcc2c65fff9ed1796c7f24a4dcfd2d462cf5010710136bcc6361bc"

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
