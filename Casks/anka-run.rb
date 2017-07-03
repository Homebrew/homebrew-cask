cask 'anka-run' do
  version '1.0_39'
  sha256 '76e6ed733927e79a150d4ee6a301d61aab450dc93aeae3c68feba4b7e0884f65'

  # d1efqjhnhbvc57.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1efqjhnhbvc57.cloudfront.net/AnkaRun-#{version}.pkg",
      referer: 'https://veertu.com/download-anka-run/'
  appcast 'https://ankadoc.bitbucket.io/release-notes/index.html',
          checkpoint: '09509132b813d53fb3367506c9e71750765c7df4ba121d7b82dafaee6fcc2c9d'
  name 'Veertu Anka Run'
  homepage 'https://veertu.com/'

  pkg "AnkaRun-#{version}.pkg"

  uninstall script: {
                      executable: '/Library/Application Support/Veertu/Anka/tools/uninstall.sh',
                      args:       ['-f'],
                      sudo:       true,
                    }

  zap delete: [
                '~/.anka.log',
                '~/.anka.mac_counter.txt',
                '~/.anka.mac_prefix.txt',
                '~/Library/Application Support/Veertu/Anka',
                '~/Library/Logs/com.veertu.anka',
                '~/vm_lib',
                '/Library/Application Support/Veertu/Anka',
              ],
      rmdir:  [
                '~/Library/Application Support/Veertu',
                '/Library/Application Support/Veertu',
              ]
end
