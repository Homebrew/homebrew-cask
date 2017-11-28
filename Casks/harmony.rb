cask 'harmony' do
  version '0.8.0'
  sha256 'af5a1cd49cc9874d54d32ec8d10d49ed3f1cf0fd223b90f039998581a9e3275d'

  # github.com/vincelwt/harmony was verified as official when first introduced to the cask
  url "https://github.com/vincelwt/harmony/releases/download/v#{version}/harmony-#{version}-mac.app.zip"
  appcast 'https://github.com/vincelwt/harmony/releases.atom',
          checkpoint: '4e40043e6276282cb9032c81609f9984677881d0a41f8d876b6e51f839dcf3d8'
  name 'Harmony'
  homepage 'https://getharmony.xyz/'

  app 'Harmony.app'

  uninstall signal: [
                      ['TERM', 'com.vincelwt.harmony'],
                      ['TERM', 'com.vincelwt.harmony.helper'],
                    ]

  zap trash: [
               '~/.config/configstore/harmony.json',
               '~/Library/Application Support/Harmony',
               '~/Library/Preferences/com.vincelwt.harmony.helper.plist',
               '~/Library/Preferences/com.vincelwt.harmony.plist',
               '~/Library/Saved Application State/com.vincelwt.harmony.savedState',
             ]
end
