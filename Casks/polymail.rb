cask 'polymail' do
  version '1.02'
  sha256 '98697b039ff9acf8432a02c374804a5abb9d442bbb1dbe8e11754c3bc02163ca'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'eee582a0668ce17f235ba0e7b49581fd20df9d3b626500a70f21c26bc595961b'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
