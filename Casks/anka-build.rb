cask 'anka-build' do
  version '1.4.3.104'
  sha256 '90b7c2f0ce369124f6ed5e7ebeb9b1bed7dd59b8bcdc7cb117f14470d7250457'

  # d1efqjhnhbvc57.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1efqjhnhbvc57.cloudfront.net/AnkaBuild-#{version}.pkg",
      referer: 'https://veertu.com/download-anka-build/'
  appcast 'https://ankadoc.bitbucket.io/release-notes/index.html'
  name 'Veertu Anka Build'
  homepage 'https://veertu.com/'

  depends_on macos: '>= :yosemite'

  pkg "AnkaBuild-#{version}.pkg"

  uninstall launchctl: [
                         'com.veertu.nlimit',
                         'com.veertu.vlaunch',
                         'com.veertu.anka.lupd',
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
