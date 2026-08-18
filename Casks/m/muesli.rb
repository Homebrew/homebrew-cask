cask "muesli" do
  version "0.8.3"
  sha256 "ac1e689e6fd7af5dbd3c7a6b02fd00f703e03ffa2191305e425fc97c500d4018"

  url "https://github.com/Muesli-HQ/muesli/releases/download/v#{version}/Muesli-#{version}.dmg",
      verified: "github.com/Muesli-HQ/muesli/"
  name "Muesli"
  desc "Local-first dictation and meeting transcription"
  homepage "https://muesli.works/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Muesli.app"

  zap trash: [
    "~/.cache/muesli",
    "~/Library/Application Support/Muesli",
    "~/Library/Caches/com.muesli.app",
    "~/Library/HTTPStorages/com.muesli.app",
    "~/Library/Preferences/com.muesli.app.plist",
  ]
end
