cask 'harmony' do
  version '0.9.1'
  sha256 'c62e010fea64b5ff5f5ca54a58575f3fa5e98d01cf7bc88dc2fb4368437b6f50'

  # github.com/vincelwt/harmony was verified as official when first introduced to the cask
  url "https://github.com/vincelwt/harmony/releases/download/v#{version}/harmony-#{version}-mac.app.zip"
  appcast 'https://github.com/vincelwt/harmony/releases.atom',
          checkpoint: '348aa7be95f5d56fc931ad2c20f878bfb51048e864d1e084fac41ecf8f90d5a2'
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
