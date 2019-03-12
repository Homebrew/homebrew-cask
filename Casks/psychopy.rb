cask 'psychopy' do
  version '3.0.6'
  sha256 'e3f04f4fbd866693fa596fc1713324df34a71ef4afe0d2f32482e8250939c994'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
