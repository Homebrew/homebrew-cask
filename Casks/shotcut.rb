cask 'shotcut' do
  version '16.02.01'
  sha256 'e78270cbc5eb8871c9af243a10f5d7cae73abbc3ec8d23ff46d31f909e14e4b5'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '8a86da49034f8b450ec252b482b8d0e9443180d6c7415f6b522fbb5906088554'
  name 'Shotcut'
  homepage 'http://www.shotcut.org/'
  license :gpl

  app 'Shotcut.app'
end
