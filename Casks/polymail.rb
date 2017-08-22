cask 'polymail' do
  version '1.43'
  sha256 '8b0c5beebcbdb164137a428c4b58c57a818efe66f92e581c2d95b146dad7dece'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'cf84dceae53d4240f02ced76d299bd5e8131332a4702b5e3417dc06778b01f47'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
