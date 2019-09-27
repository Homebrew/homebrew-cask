cask 'anka-flow' do
  version '2.1.1.111'
  sha256 '1cedfc9ff7fbedda84cc99eb8a88cc908262887dd254184a93d4b930989ae797'

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
