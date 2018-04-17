cask 'shotcut' do
  version '18.03.06'
  sha256 'ee30e49bd6ef83c9fda20b194641d45aee5ba728edc742ca2935fe5f89ceec25'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '30ad666d17c17c714d28555d84b9ef7f3c7250809a46542b805a1213b79ac292'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
