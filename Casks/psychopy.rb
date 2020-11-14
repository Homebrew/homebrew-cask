cask "psychopy" do
  version "2020.2.6"
  sha256 "ce45e8847978889750f73fab82e741239c6f9711d804b7d8a2dd10dd2274a33c"

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-macOS.dmg"
  appcast "https://github.com/psychopy/psychopy/releases.atom"
  name "PsychoPy"
  desc "For running psychology and neuroscience experiments"
  homepage "https://github.com/psychopy/psychopy"

  app "PsychoPy.app"
end
