cask "logseq" do
  arch arm: "arm64", intel: "x64"

  version "0.10.13"
  sha256 arm:   "9ff5731c93c178be41781f65148ed10d1d02f29d8aa743d93302cf54f47e81fd",
         intel: "c2085e13113a5a41a8223fb791ecceffe0c0a8076dcd0d332570dd98172c765f"

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
