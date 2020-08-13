cask "pitchperfect" do
  version :latest
  sha256 :no_check

  url "https://www.nch.com.au/tuner/pitchmaci.zip"
  name "PitchPerfect"
  homepage "https://www.nch.com.au/tuner/"

  app "PitchPerfect.app"

  zap trash: "~/Library/Application Support/NCH Software/PitchPerfect/Shared/SharedSettings.xml"
end
