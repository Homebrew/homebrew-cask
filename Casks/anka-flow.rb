cask 'anka-flow' do
  version '1.0.2.73'
  sha256 '67f5b72eb28bf66b93e3680d015e89dce545b28f9995cd05fa01805820ee21a0'

  # d1efqjhnhbvc57.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1efqjhnhbvc57.cloudfront.net/AnkaFlow-#{version}.pkg",
      referer: 'https://veertu.com/download-anka-run/'
  appcast 'https://ankadoc.bitbucket.io/release-notes/index.html',
          checkpoint: 'a706993dc16fae16684980a04ef5d80c23909c1ddb25e5946c08a1e72a3d496c'
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
