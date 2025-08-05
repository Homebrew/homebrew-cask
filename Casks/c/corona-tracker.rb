cask "corona-tracker" do
  version "1.7.2"
  sha256 "43a8a2512d8b33199d0c6e5a8d79d514c999c56293d0a665fa664bc0762c587b"

  url "https://github.com/MhdHejazi/CoronaTracker/releases/download/v#{version}/CoronaTracker-macOS.zip",
      verified: "github.com/MhdHejazi/CoronaTracker/"
  name "Corona Tracker"
  desc "Coronavirus tracker app with maps and charts"
  homepage "https://coronatracker.samabox.com/"

  depends_on macos: ">= :catalina"

  app "Corona Tracker.app"

  zap trash: [
    "~/Library/Application Scripts/maccatalyst.com.samabox.corona",
    "~/Library/Containers/maccatalyst.com.samabox.corona",
  ]

  caveats do
    requires_rosetta
  end
end
