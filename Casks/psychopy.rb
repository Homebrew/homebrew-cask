cask "psychopy" do
  version "2021.2.0"
  sha256 "35990de0b942bd3e0ebd5775d469ae4d4d5a9ea7f672fd640dfd1dddfe88a175"

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-macOS.dmg"
  name "PsychoPy"
  desc "For running psychology and neuroscience experiments"
  homepage "https://github.com/psychopy/psychopy"

  app "PsychoPy.app"
end
