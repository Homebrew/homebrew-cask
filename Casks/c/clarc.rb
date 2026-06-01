cask "clarc" do
  version "1.3.0"
  sha256 "f0ccf1a73df6db34d5c4a4fe562dc5b75ec5330dcc83923ac4bb8a0d25a44d83"

  url "https://github.com/ttnear/Clarc/releases/download/v#{version}/Clarc-#{version}.zip"
  name "Clarc"
  desc "GUI client for the Claude Code CLI"
  homepage "https://github.com/ttnear/Clarc"

  livecheck do
    url "https://raw.githubusercontent.com/ttnear/Clarc/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Clarc.app"

  zap trash: [
    "~/Library/Application Support/Clarc",
    "~/Library/Caches/com.idealapp.Clarc",
    "~/Library/HTTPStorages/com.idealapp.Clarc",
    "~/Library/Preferences/com.idealapp.Clarc.plist",
    "~/Library/Saved Application State/com.idealapp.Clarc.savedState",
  ]
end
