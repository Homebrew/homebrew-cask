cask "psychopy" do
  version "2020.2.3"
  sha256 "573c722fc7f6a3fc9e0708df9a70fbc62193973083105484e7e895b698859308"

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast "https://github.com/psychopy/psychopy/releases.atom"
  name "PsychoPy"
  homepage "https://github.com/psychopy/psychopy"

  app "PsychoPy.app"
end
