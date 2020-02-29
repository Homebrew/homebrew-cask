cask 'anka-flow' do
  version '2.2.1.114'
  sha256 '5a9cbee1a0c8a93e41905b5b5263c023bf3bcea79b0905144403852d0085ed5f'

  # d1efqjhnhbvc57.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1efqjhnhbvc57.cloudfront.net/Anka-#{version}.pkg",
      referer: 'https://veertu.com/download-anka-run/'
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://veertu.com/downloads/ankaflow-latest'
  name 'Veertu Anka Flow'
  homepage 'https://veertu.com/'

  depends_on macos: '>= :yosemite'

  pkg "Anka-#{version}.pkg"

  uninstall launchctl: [
                         'com.veertu.nlimit',
                         'com.veertu.vlaunch',
                         'com.veertu.anka.lupd',
                         'com.veertu.anka.ankakbd',
                         'com.veertu.anka.ankanetd',
                       ],
            script:    {
                         executable: '/Library/Application Support/Veertu/Anka/tools/uninstall.sh',
                         args:       ['-f'],
                         sudo:       true,
                       }

  zap trash: [
               '~/.anka',
               '~/Library/Application Support/Veertu/Anka',
               '~/Library/Logs/Anka',
               '~/Library/Preferences/com.veertu.ankaview.plist',
               '/Library/Application Support/Veertu/Anka',
             ],
      rmdir: [
               '~/Library/Application Support/Veertu',
               '/Library/Application Support/Veertu',
             ]

  caveats do
    license 'https://veertu.com/terms-and-conditions/'
  end
end
