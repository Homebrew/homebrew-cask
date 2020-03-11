cask 'psychopy' do
  version '2020.1.3'
  sha256 'bccf335b807d8934dfb55f7d6e654e9cd371e01d54268031be8717216221c348'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
