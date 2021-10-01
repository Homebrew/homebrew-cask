cask "logseq" do
  version "0.4.2"

  if Hardware::CPU.intel?
    sha256 "e8bf8d623ac4076f521bf72e1f3c60a206f05359c2066e28f7a1f1a130b95cde"
    url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-x64-#{version}.dmg"
  else
    sha256 "e5053facc669a3a7e5e5d8d17f732186adb6b9b04227428efabeb70e110ae6c1"
    url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-arm64-#{version}.dmg"
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
