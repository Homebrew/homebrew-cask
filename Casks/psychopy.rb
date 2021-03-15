cask "psychopy" do
  version "2021.1.3"
  sha256 "87fb60f5727ee9afc528ddd85ce29ff2a170617ea5641c3dab505d734ff7208c"

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-macOS.dmg"
  appcast "https://github.com/psychopy/psychopy/releases.atom"
  name "PsychoPy"
  desc "For running psychology and neuroscience experiments"
  homepage "https://github.com/psychopy/psychopy"

  app "PsychoPy.app"
end
