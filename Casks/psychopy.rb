cask "psychopy" do
  version "2020.2.2"
  sha256 "91019b51aef331750b606e683e5a84e5f1ea2ff95363e70be5eb4b23ad1ed50f"

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast "https://github.com/psychopy/psychopy/releases.atom"
  name "PsychoPy"
  homepage "https://github.com/psychopy/psychopy"

  app "PsychoPy3.app"
end
