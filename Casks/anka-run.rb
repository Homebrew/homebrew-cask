cask 'anka-run' do
  version '1.0_34'
  sha256 'b1d5edd68a20964298c3ff41c48b5b0fe7ce0974e57f666a1de087919167ed2d'

  # d1efqjhnhbvc57.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1efqjhnhbvc57.cloudfront.net/AnkaRun-#{version}.pkg"
  appcast 'https://ankadoc.bitbucket.io/release-notes/index.html',
          checkpoint: 'e8fdd43a7c0fea864e6c24360b5a8aa87c014f5e8c22768e41a2c7da52f8a563'
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
