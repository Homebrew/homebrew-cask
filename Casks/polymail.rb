cask 'polymail' do
  version '1.42'
  sha256 '19a2c18464446739ee480a83be96cc21f20d6810eee8b2dd78121710f1152b55'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'ce60f63214a94ea8a1ff3dc50f23f9846d4981eecd66b604042c6f904bef701f'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
