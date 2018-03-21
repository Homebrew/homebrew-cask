cask 'anka-build' do
  version '1.2.1.87'
  sha256 '24675a9e3e4671908b2874fe15da0d6ff2d1c76dd519ef6965e1b2ac2633f190'

  # d1efqjhnhbvc57.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1efqjhnhbvc57.cloudfront.net/AnkaBuild-#{version}.pkg",
      referer: 'https://veertu.com/download-anka-build/'
  appcast 'https://ankadoc.bitbucket.io/release-notes/index.html',
          checkpoint: '5d5691037787d28f8cf2d67543fabcc5053f8491cc827c3e9801c485f9fd3343'
  name 'Veertu Anka Build'
  homepage 'https://veertu.com/'

  depends_on macos: '>= :yosemite'

  pkg "AnkaBuild-#{version}.pkg"

  uninstall launchctl: [
                         'com.veertu.nlimit',
                         'com.veertu.vlaunch',
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

  caveats <<~EOS
    Installing this Cask means you have AGREED to the
    Veertu End User License Agreement at

    https://veertu.com/terms-and-conditions/
  EOS
end
