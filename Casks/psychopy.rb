cask 'psychopy' do
  version '3.2.2'
  sha256 '8b85bc15b7a0e026ff64ce4027793a89aee6a00b81154a4593f5c1aedd1b606f'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
