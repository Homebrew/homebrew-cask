cask 'anka-flow' do
  version '1.1.0.77'
  sha256 'f9a8ac9be1674e7e5d1e849d4a003af06228f3dc51b5e58dac076cb1ddfe6d5a'

  # d1efqjhnhbvc57.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1efqjhnhbvc57.cloudfront.net/AnkaFlow-#{version}.pkg",
      referer: 'https://veertu.com/download-anka-run/'
  appcast 'https://ankadoc.bitbucket.io/release-notes/index.html',
          checkpoint: '51c0d15eaa5225ac5232f10c7793084daa9b223245ccd6203d76cc3f82555248'
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
