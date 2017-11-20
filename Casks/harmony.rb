cask 'harmony' do
  version '0.7.2'
  sha256 '4e98f31b65c4949d34f9407e050a1e8778dd586b1861f7ed92ff4ac18085d004'

  # github.com/vincelwt/harmony was verified as official when first introduced to the cask
  url "https://github.com/vincelwt/harmony/releases/download/v#{version}/harmony-#{version}-mac.app.zip"
  appcast 'https://github.com/vincelwt/harmony/releases.atom',
          checkpoint: 'c2ffbf77ccb017182edbdc2295b50fa7fb3729473508b07ce968d5c45ea975a9'
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
