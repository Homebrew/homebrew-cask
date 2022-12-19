cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.13"
  sha256 arm:   "02c07146ea3417a5a558a11cb1f5b453d293e0f73b947d213aa0cf949f287401",
         intel: "5671651776600f1de22e34153a2cd791e2b86c41002c3d8fbf571ba57d0ad58a"

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
