cask 'shotcut' do
  version '16.04.01'
  sha256 '4dd8c05628ad27288d9fcd868b33870a583dca59e9235d4597e5d4b956bbefa0'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '1082a01a734f90f36338e80cbf246e562430f26142c3b85eedb9fc90609ffa08'
  name 'Shotcut'
  homepage 'http://www.shotcut.org/'
  license :gpl

  app 'Shotcut.app'
end
