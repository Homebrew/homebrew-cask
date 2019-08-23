cask 'psychopy' do
  version '3.1.5'
  sha256 '935eac2e7aa6bbac7764fdb8277eb2200cadc6f1aa1057e9a2d2f1097ee7e2a3'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
