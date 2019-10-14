cask 'psychopy' do
  version '3.2.4'
  sha256 '4c07f4415279f9721c339ddec769f1926698e842cfea2a72baf360b34cc034f0'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
