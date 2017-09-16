cask 'anka-flow' do
  version '1.0.1.72'
  sha256 '07e65e1d0b18d7b21531e1ae8e92e3a34dda78e977fc9bcdcb2769ae9fb0fe9c'

  # d1efqjhnhbvc57.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1efqjhnhbvc57.cloudfront.net/AnkaFlow-#{version}.pkg",
      referer: 'https://veertu.com/download-anka-run/'
  appcast 'https://ankadoc.bitbucket.io/release-notes/index.html',
          checkpoint: '232dfbfc083bfa7d66c74ee6d56d436419e158fbf6a29bbab6c869230293440c'
  name 'Veertu Anka Flow'
  homepage 'https://veertu.com/'

  depends_on macos: '>= :yosemite'

  pkg "AnkaFlow-#{version}.pkg"

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
