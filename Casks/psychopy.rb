cask 'psychopy' do
  version '3.1.3'
  sha256 'f477b08777aa7cf28626b3ea6a08ea1c1325564b03025436d16972bb0e2db594'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
