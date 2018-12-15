cask 'psychopy' do
  version '3.0.0b13'
  sha256 '94656b12e55bbbfa4529ddf36bfac4da3ef7a4ca611b3cd76fa9e23a6eb773e3'

  url "https://github.com/psychopy/psychopy/releases/download/3.0.0b13/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
