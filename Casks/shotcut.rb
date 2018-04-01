cask 'shotcut' do
  version '18.03.02'
  sha256 '75c221a4faa6d705a8bc8975f843e220905d2c9feb937a87ddeaa231f804d24a'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '30ad666d17c17c714d28555d84b9ef7f3c7250809a46542b805a1213b79ac292'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
