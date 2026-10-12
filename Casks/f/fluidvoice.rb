cask "fluidvoice" do
  version "1.6.11"
  sha256 "a481aef2f1c36ab215671dc0cc20ce9a9cd460d51e75b87b095a83232eec5065"

  url "https://github.com/altic-dev/FluidVoice/releases/download/v#{version}/Fluid-oss-#{version}.dmg"
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

  uninstall quit: "com.FluidApp.app"

  zap trash: [
    "~/Library/Application Support/FluidAudio",
    "~/Library/Application Support/FluidVoice",
    "~/Library/Caches/com.FluidApp.app",
    "~/Library/Caches/FluidAudio",
    "~/Library/Logs/Fluid",
    "~/Library/Preferences/com.FluidApp.app.plist",
  ]
end
