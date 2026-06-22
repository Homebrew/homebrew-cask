cask "fluidvoice" do
  version "1.6.0"
  sha256 "3375e57e871cbc49663eaa3dfa49e13d2432fee4e86c3427603b0993729e8100"

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
