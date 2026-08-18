cask "fluidvoice" do
  version "1.6.9"
  sha256 "d8fb7861d479748bb9905b34e058bc0b106efb3c1767b397f9b2cb604a9357a7"

  url "https://github.com/altic-dev/FluidVoice/releases/download/v#{version}/Fluid-oss-#{version}.dmg",
      verified: "github.com/altic-dev/FluidVoice/"
  name "FluidVoice"
  desc "Offline voice-to-text dictation app with AI enhancement"
  homepage "https://altic.dev/fluid"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "FluidVoice.app"

  zap trash: [
    "~/Library/Application Support/FluidAudio",
    "~/Library/Application Support/FluidVoice",
    "~/Library/Caches/com.FluidApp.app",
    "~/Library/Caches/FluidAudio",
    "~/Library/Logs/Fluid",
    "~/Library/Preferences/com.FluidApp.app.plist",
  ]
end
