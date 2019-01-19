cask 'psychopy' do
  version '3.0.2'
  sha256 '121c5e80a24eb9fcd57f5b8e6b2a4a512a7da866f5b66cea01ca7c434ac77301'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
