cask "psychopy" do
  version "2020.2.0"
  sha256 "701cbf07d3e18defec84ce15070fbd82fe4f95cc023503bdb361b8203d7cd089"

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/PsychoPy-#{version}.zip"
  appcast "https://github.com/psychopy/psychopy/releases.atom"
  name "PsychoPy"
  homepage "https://github.com/psychopy/psychopy"

  app "PsychoPy3.app"
end
