cask "pitchperfect" do
  version "2.15"
  sha256 :no_check

  url "https://www.nch.com.au/tuner/pitchmaci.zip"
  name "PitchPerfect"
  homepage "https://www.nch.com.au/tuner/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "PitchPerfect.app"

  zap trash: "~/Library/Application Support/NCH Software/PitchPerfect/Shared/SharedSettings.xml"
end
