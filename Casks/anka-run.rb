cask 'anka-run' do
  version '1.0_40'
  sha256 '7bf52d013a36e7d50dbf5eec94ef6b675b5a02470282e758ef8ca796f57d29dd'

  # d1efqjhnhbvc57.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1efqjhnhbvc57.cloudfront.net/AnkaRun-#{version}.pkg",
      referer: 'https://veertu.com/download-anka-run/'
  appcast 'https://ankadoc.bitbucket.io/release-notes/index.html',
          checkpoint: '422bcfb1601ba1d65be38017b12b058d1fc2f333d8f8d5f0f4a0a1c3dff36344'
  name 'Veertu Anka Run'
  homepage 'https://veertu.com/'

  pkg "AnkaRun-#{version}.pkg"

  uninstall script: {
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
