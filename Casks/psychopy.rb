cask 'psychopy' do
  version '3.1.4'
  sha256 '12b2036b5ea2ddb1a8b7d71d0356a31dd08db89823eb3d78436c9d4443a50172'

  url "https://github.com/psychopy/psychopy/releases/download/#{version}/StandalonePsychoPy3-#{version}-MacOS.dmg"
  appcast 'https://github.com/psychopy/psychopy/releases.atom'
  name 'PsychoPy'
  homepage 'https://github.com/psychopy/psychopy'

  app 'PsychoPy3.app'
end
