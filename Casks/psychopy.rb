cask 'psychopy' do
  version '1.90.1'
  sha256 'f223bb64bd193acac336cbf62eb2bd466e1cdda7c7166c281f1976372033d7c8'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy2_PY3-#{version}b-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom',
          checkpoint: '9b4c97959bd0aa22c547042c3070f27d5b664e0cee2a588a5e0f373dfc720fff'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy2_PY3.app'
end
