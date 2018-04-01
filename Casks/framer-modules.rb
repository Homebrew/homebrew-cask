cask 'framer-modules' do
  version '1.0.0'
  sha256 '46b4bcee59f33b9bf8bdca8c9483562731063c2d83b75a7c62033ea66e050819'

  # github.com/kysely/framer-modules was verified as official when first introduced to the cask
  url "https://github.com/kysely/framer-modules/releases/download/v#{version}/framer-modules-#{version}.dmg"
  appcast 'https://github.com/kysely/framer-modules/releases.atom',
          checkpoint: '7bc974f6b5a4dcc889a98e1bd9c217031322742ae4df9ca8c54eea4507c765dc'
  name 'Framer Modules'
  homepage 'https://www.framermodules.com/'

  app 'Framer Modules.app'

  uninstall signal: ['TERM', 'digital.kysely.framermodules']

  zap trash: [
               '~/Library/Application Support/Framer Modules',
               '~/Library/Preferences/digital.kysely.framermodules.helper.plist',
               '~/Library/Preferences/digital.kysely.framermodules.plist',
             ]
end
