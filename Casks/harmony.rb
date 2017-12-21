cask 'harmony' do
  version '0.8.1'
  sha256 '25fbed3f5b829b143a057e46646c536076afe5ae018685e999edd7ce0219276c'

  # github.com/vincelwt/harmony was verified as official when first introduced to the cask
  url "https://github.com/vincelwt/harmony/releases/download/v#{version}/harmony-#{version}-mac.app.zip"
  appcast 'https://github.com/vincelwt/harmony/releases.atom',
          checkpoint: '26532afc689cd9e557babfde8dba6a8714f043e990ee95d2f1d31ae3b910adca'
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
