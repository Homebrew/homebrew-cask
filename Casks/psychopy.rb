cask 'psychopy' do
  version '3.2.0'
  sha256 'db6d4d4121169070a98e420742d5a048c8eb1685d775121ebc4faf8fe2520751'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
