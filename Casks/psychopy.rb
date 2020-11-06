cask "psychopy" do
  version "2020.2.5"
  sha256 "0651a3c97d5f053e331ef586f6a65203771f8c8f15126a6d7405f7d7e402bdaf"

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-macOS.dmg"
  appcast "https://github.com/psychopy/psychopy/releases.atom"
  name "PsychoPy"
  desc "For running psychology and neuroscience experiments"
  homepage "https://github.com/psychopy/psychopy"

  app "PsychoPy.app"
end
