cask "psychopy" do
  version "2020.2.8"
  sha256 "d87e9f7f4142b1e158a7d145dfd7fcbb65c821b832b8fe6553824ceda0f5fab4"

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-macOS.dmg"
  appcast "https://github.com/psychopy/psychopy/releases.atom"
  name "PsychoPy"
  desc "For running psychology and neuroscience experiments"
  homepage "https://github.com/psychopy/psychopy"

  app "PsychoPy.app"
end
