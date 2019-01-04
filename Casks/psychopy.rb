cask 'psychopy' do
  version '3.0.0'
  sha256 'a7d5c616023b888928816fb3418cfd93a38d005ff9e1e10bdb3d650aedd3773d'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
