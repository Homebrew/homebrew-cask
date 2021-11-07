cask "logseq" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.4.5"

  if Hardware::CPU.intel?
    sha256 "4f6c2b0fa2fb1353bcc1f7db5c7e742c41e5fcae375d72a97c90f13391ab7971"
  else
    sha256 "8e2a5b220fe67c50684b3f0ffae169efac4177c0755331b497d7f20e238d05dd"
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
