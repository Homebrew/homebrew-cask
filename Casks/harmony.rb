cask 'harmony' do
  version '0.7.0'
  sha256 '1cf4de11453f18c28288c4cf2f00481528a43f46eea032f8111f369de462a9b4'

  # github.com/vincelwt/harmony was verified as official when first introduced to the cask
  url "https://github.com/vincelwt/harmony/releases/download/v#{version}/harmony-#{version}-mac.app.zip"
  appcast 'https://github.com/vincelwt/harmony/releases.atom',
          checkpoint: '21bd1bce8a4ad1f59cd0acdd8bef98fdaa1f82743bcdb052bfbda1c31eb62366'
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
