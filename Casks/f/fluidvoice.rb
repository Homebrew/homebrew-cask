cask "fluidvoice" do
  version "1.6.6"
  sha256 "9087f85af0a7563ed4594e644728049faee0a9ef3176d8517516c5b473ad0fdf"

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
