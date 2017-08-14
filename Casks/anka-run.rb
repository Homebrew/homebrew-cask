cask 'anka-run' do
  version '1.0.47'
  sha256 '3e5d469f60756c9d4f62525459ee5f628ea6b053a6b8d69157ff966d837ff120'

  # d1efqjhnhbvc57.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1efqjhnhbvc57.cloudfront.net/AnkaRun-#{version}.pkg",
      referer: 'https://veertu.com/download-anka-run/'
  appcast 'https://ankadoc.bitbucket.io/release-notes/index.html',
          checkpoint: '6d50548a07e71d0a5e76211710715fb8b8611d45872e0af3cfb7a3996e547541'
  name 'Veertu Anka Run'
  homepage 'https://veertu.com/'

  pkg "AnkaRun-#{version}.pkg"

  uninstall launchctl: [
                         'com.veertu.nlimit',
                         'com.veertu.vlaunch',
                       ],
            script:    {
                         executable: '/Library/Application Support/Veertu/Anka/tools/uninstall.sh',
                         args:       ['-f'],
                         sudo:       true,
                       }

  zap delete: [
                '~/.anka',
                '~/Library/Application Support/Veertu/Anka',
                '~/Library/Logs/Anka',
                '~/Library/Preferences/com.veertu.ankaview.plist',
                '/Library/Application Support/Veertu/Anka',
              ],
      rmdir:  [
                '~/Library/Application Support/Veertu',
                '/Library/Application Support/Veertu',
              ]
end
