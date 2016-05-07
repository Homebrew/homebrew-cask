cask 'polymail' do
  version '0.82'
  sha256 '9d51b3c9ca19a0a902323bcc3d09a52699ca9e07d7b96a2deae47e9be0268d00'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'ad40658e2b48dc479ee9d02a56c553012af5d2ddc921d82e98371bf37d070cf2'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
