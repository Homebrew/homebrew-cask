cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.8.5"
  sha256 arm:   "d8d259cef6b6d6c11a5e0f154ec608e2c48023771eca4688d4900b8964bd85a1",
         intel: "615e1a423d6553912c3b1ba67f8854ddeb9990cfd4e0fce50b80365fddaa6e75"

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
