cask "psychopy" do
  version "2020.2.4"
  sha256 "13969f4cccdffad985e1e939c13664e16f04cae49da8525a0722689945db0133"

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-macOS.dmg"
  appcast "https://github.com/psychopy/psychopy/releases.atom"
  name "PsychoPy"
  homepage "https://github.com/psychopy/psychopy"

  app "PsychoPy.app"
end
