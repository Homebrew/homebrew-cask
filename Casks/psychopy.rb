cask "psychopy" do
  version "2021.1.0"
  sha256 "ea2fd6ae02aeaf8baae3c1e2312247cd2b2e39c8c66535dc86fb45b7436bcc8d"

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-macOS.dmg"
  appcast "https://github.com/psychopy/psychopy/releases.atom"
  name "PsychoPy"
  desc "For running psychology and neuroscience experiments"
  homepage "https://github.com/psychopy/psychopy"

  app "PsychoPy.app"
end
