cask "psychopy" do
  version "2020.2.9"
  sha256 "66bc693fe8166c636819784a4f5ff000d01c0724312a69190464f99f318bc18b"

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-macOS.dmg"
  appcast "https://github.com/psychopy/psychopy/releases.atom"
  name "PsychoPy"
  desc "For running psychology and neuroscience experiments"
  homepage "https://github.com/psychopy/psychopy"

  app "PsychoPy.app"
end
