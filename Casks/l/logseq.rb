cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.10.11"
  sha256 arm:   "cae9d5aa80c7499158705144f8e9934422ec6c9eca02996dd5cbc16fc131f6a8",
         intel: "b511e61698618899719f51ba6f5a7afb6b096fd5d1991180c1a9b68322d783b6"

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
