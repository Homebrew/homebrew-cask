cask 'anka-flow' do
  version '1.4.3.103'
  sha256 '41a2d40b04085b216a97b20b3103771ad01f66629ca3b744bfec21335203190a'

  # d1efqjhnhbvc57.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1efqjhnhbvc57.cloudfront.net/AnkaFlow-#{version}.pkg",
      referer: 'https://veertu.com/download-anka-run/'
  appcast 'https://ankadoc.bitbucket.io/release-notes/index.html'
  name 'Veertu Anka Flow'
  homepage 'https://veertu.com/'

  depends_on macos: '>= :yosemite'

  pkg "AnkaFlow-#{version}.pkg"

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
