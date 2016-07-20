cask 'polymail' do
  version '1.00'
  sha256 '0431e07aa50bbf70aaa73555e100e742c1ab3f98c2c969f183e0971bfd630a1f'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '9a534acacf457d57b76493edac6e61e19a2569567c06a35331a47bdb81163bf5'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
