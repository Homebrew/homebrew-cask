cask "psychopy" do
  version "2021.2.0.1"
  sha256 "91c8208bb3f4e0df9ea16ede81dcd6b901814975c6698485c54dd46b9344a3bc"

  # url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-macOS.dmg"
  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-2021.2.0.1-macOS.dmg"
  name "PsychoPy"
  desc "For running psychology and neuroscience experiments"
  homepage "https://github.com/psychopy/psychopy"

  app "PsychoPy.app"
end
