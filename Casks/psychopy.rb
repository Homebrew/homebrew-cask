cask 'psychopy' do
  version '1.85.0'
  sha256 'f14253facd263245dc36c51fb0318d7b8061d4bd145a802a0d7ead94400b4dac'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy-#{version}-OSX_64bit.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom',
          checkpoint: 'da63260b70b661fee5a17d94721ab01f6e6610a9334de39d073a97fcb56ab20c'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy2.app'
end
