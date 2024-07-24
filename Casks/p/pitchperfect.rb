cask "pitchperfect" do
  version "2.15"
  sha256 :no_check

  url "https://www.nch.com.au/tuner/pitchmaci.zip"
  name "PitchPerfect"
  desc "Guitar tuning software"
  homepage "https://www.nch.com.au/tuner/"

  disable! date: "2024-07-06", because: "is 32-bit only"

  app "PitchPerfect.app"

  zap trash: "~/Library/Application Support/NCH Software/PitchPerfect/Shared/SharedSettings.xml"
end
