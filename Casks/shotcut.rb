cask 'shotcut' do
  version '17.04.02'
  sha256 '61c51121499ede0afddc2b3918f42b6ce35d858a22f489d45930c01a3cb460ac'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: 'da0ba82e33bc10bcdb6e6567bd4b0a541c8792fc14bd091bb9e468d13edbaf3f'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
