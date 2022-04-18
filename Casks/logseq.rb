cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.6.6"

  if Hardware::CPU.intel?
    sha256 "7785bddf2bb628b2b4eac9468e72a5fa0557a487088bc389a87c7a05dad74a96"
  else
    sha256 "1aa11b3d1763ad5b6ed78cc7e2514163dc4f90970c9606ff0ad207765c931553"
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
