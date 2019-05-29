cask 'psychopy' do
  version '3.1.2'
  sha256 '9ebc45b532ec3cd40fe7723445e392f2944f36374fc5e3944f51f499c0017715'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
