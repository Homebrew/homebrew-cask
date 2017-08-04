cask 'anka-run' do
  version '1.0_41'
  sha256 'e1d820a93785d26ff34b46e9aaf53315f9586554e5c50076f8a3b30168df8bd6'

  # d1efqjhnhbvc57.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1efqjhnhbvc57.cloudfront.net/AnkaRun-#{version}.pkg",
      referer: 'https://veertu.com/download-anka-run/'
  appcast 'https://ankadoc.bitbucket.io/release-notes/index.html',
          checkpoint: '4a79fa8cf76c46a8bc86fc2f09d5fb60da10b4aab9c467178bc22024c4b9b961'
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
