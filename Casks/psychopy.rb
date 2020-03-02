cask 'psychopy' do
  version '2020.1.2'
  sha256 'a61a2d2702a5918c8c9700a642966acbae4f28f1ee63917d2adb69af6d104ff2'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
