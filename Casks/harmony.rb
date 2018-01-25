cask 'harmony' do
  version '0.8.2'
  sha256 'ffc853ac9a108116ee27226bca4304bd7574f5bc12ed58b923eeaa7cca87bbcc'

  # github.com/vincelwt/harmony was verified as official when first introduced to the cask
  url "https://github.com/vincelwt/harmony/releases/download/v#{version}/harmony-#{version}-mac.app.zip"
  appcast 'https://github.com/vincelwt/harmony/releases.atom',
          checkpoint: '51f2f5bd9f09a298b9495a431d357788d5c8247adcbfae2b22e552d48477669e'
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
