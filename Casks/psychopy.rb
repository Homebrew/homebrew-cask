cask 'psychopy' do
  version '1.90.1'
  sha256 'f4dc9bf1d7a155fe53b34c8903afd8069fe44d4091f8d34c1ef46b7f1d14b77f'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy2-#{version}b-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom',
          checkpoint: '9b4c97959bd0aa22c547042c3070f27d5b664e0cee2a588a5e0f373dfc720fff'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy2.app'
end
