cask "greensignal" do
  version "1.0.2"
  sha256 "630614bcee392247a6ab127a4fc18f2ea2d589f139b6479da48b30cdb45e8d32"

  url "https://releases.greensignal.app/releases/v#{version}/GreenSignal_#{version}_universal.dmg",
      verified: "releases.greensignal.app/"
  name "GreenSignal"
  desc "Pre-call check for camera, microphone, speaker, and network quality"
  homepage "https://mutedeck.com/tools/greensignal"

  livecheck do
    url :homepage
    regex(/href=.*?GreenSignal[._-]v?(\d+(?:\.\d+)+)[._-]universal\.dmg/i)
  end

  depends_on macos: :sonoma

  app "GreenSignal.app"

  zap trash: [
    "~/Library/Application Scripts/app.greensignal.app",
    "~/Library/Containers/app.greensignal.app",
  ]
end
