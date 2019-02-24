cask 'psychopy' do
  version '3.0.5'
  sha256 'accc758562dccbdd69099fa4dbb8f58c82e1b1a87826daec3929bccfe46573d4'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
