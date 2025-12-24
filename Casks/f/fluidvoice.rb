cask "fluidvoice" do
  version "1.5.1"
  sha256 "aac9037c05f36a22814c1fc5ab696e66f490e70c7eac35ec97f4c3edec028e45"

  url "https://github.com/altic-dev/FluidVoice/releases/download/v#{version}/Fluid-oss-#{version}.zip",
      verified: "github.com/altic-dev/FluidVoice/"
  name "FluidVoice"
  desc "Open source voice-to-text dictation app with AI enhancement"
  homepage "https://altic.dev/fluid"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "FluidVoice.app"

  zap trash: [
    "~/Library/Application Support/FluidVoice",
    "~/Library/Caches/com.FluidApp.app",
    "~/Library/Preferences/com.FluidApp.app.plist",
  ]
end
