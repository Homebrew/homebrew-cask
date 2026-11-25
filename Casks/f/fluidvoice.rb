cask "fluidvoice" do
  version "1.6.13"
  sha256 "8da47aba78de572973c287ab5e33d9eefc4b8938f69bbff99249e28900ce49aa"

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
    "~/Library/Application Support/com.FluidApp.app",
    "~/Library/Application Support/FluidAudio",
    "~/Library/Application Support/FluidVoice",
    "~/Library/Caches/com.FluidApp.app",
    "~/Library/Caches/FluidAudio",
    "~/Library/HTTPStorages/com.FluidApp.app",
    "~/Library/Logs/Fluid",
    "~/Library/Preferences/com.FluidApp.app.plist",
  ]
end
