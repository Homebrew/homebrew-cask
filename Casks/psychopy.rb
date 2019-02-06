cask 'psychopy' do
  version '3.0.3'
  sha256 '063e70dac80635cf779b07653257e5bfcb76e8362ae9146dd1703e0edb7cbd97'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
