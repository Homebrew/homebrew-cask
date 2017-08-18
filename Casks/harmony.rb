cask 'harmony' do
  version '0.7.1'
  sha256 '1123e27f7799c2575dde8c06bc8c7ae49baf6661c41fb91bd126c4593d34f5b7'

  # github.com/vincelwt/harmony was verified as official when first introduced to the cask
  url "https://github.com/vincelwt/harmony/releases/download/v#{version}/harmony-#{version}-mac.app.zip"
  appcast 'https://github.com/vincelwt/harmony/releases.atom',
          checkpoint: '7d13a305ee9f1984862a24f6b9ead0e3e84e6e95ef82ce25036bf3692ba1b208'
  name 'Harmony'
  homepage 'https://getharmony.xyz/'

  app 'Harmony.app'

  uninstall signal: [
                      ['TERM', 'com.vincelwt.harmony'],
                      ['TERM', 'com.vincelwt.harmony.helper'],
                    ]

  zap delete: '~/Library/Saved Application State/com.vincelwt.harmony.savedState',
      trash:  [
                '~/.config/configstore/harmony.json',
                '~/Library/Application Support/Harmony',
                '~/Library/Preferences/com.vincelwt.harmony.helper.plist',
                '~/Library/Preferences/com.vincelwt.harmony.plist',
              ]
end
