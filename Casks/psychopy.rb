cask 'psychopy' do
  version '3.1.0'
  sha256 '027bcc80f9ea47f2668ccf58b508b589de78f9dcf944f91c5d039a0673cc84bc'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
