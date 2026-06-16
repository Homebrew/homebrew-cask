cask "greensignal" do
  version "1.0.0"
  sha256 :no_check

  url "https://releases.greensignal.app/latest/GreenSignal-latest.dmg",
      verified: "releases.greensignal.app/"
  name "GreenSignal"
  desc "Pre-call check for camera, microphone, speaker, and network quality"
  homepage "https://mutedeck.com/tools/greensignal"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: :sonoma

  app "GreenSignal.app"

  zap trash: [
    "~/Library/Application Scripts/app.greensignal.app",
    "~/Library/Containers/app.greensignal.app",
  ]
end
