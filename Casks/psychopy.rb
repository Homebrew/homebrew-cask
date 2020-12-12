cask "psychopy" do
  version "2020.2.10"
  sha256 "38e9e2bf5a13d5fb46379ed510d007b6088a51d4dfb952279fe043bb0468ef43"

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-macOS.dmg"
  appcast "https://github.com/psychopy/psychopy/releases.atom"
  name "PsychoPy"
  desc "For running psychology and neuroscience experiments"
  homepage "https://github.com/psychopy/psychopy"

  app "PsychoPy.app"
end
