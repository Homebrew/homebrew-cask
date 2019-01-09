cask 'copyclip' do
  version '2.9.9'
  sha256 'da6401eabc681c47bd555ee91ab83c154e7cf0b41bb9ea445774aad7264a73ac'

  # rink.hockeyapp.net/api/2/apps/ffb436060eb379c0cb23097402e92379 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/ffb436060eb379c0cb23097402e92379?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/ffb436060eb379c0cb23097402e92379'
  name 'CopyClip'
  homepage 'https://fiplab.com/apps/copyclip-for-mac'

  app "CopyClip #{version.major}.app"

  uninstall quit: "com.fiplab.copyclip#{version.major}",
            zap:  [
                    '~/Library/Application Scripts/com.fiplab.copyclip*helper',
                    '~/Library/Application Scripts/com.fiplab.copyclip*',
                    '~/Library/Containers/com.fiplab.copyclip*helper',
                    '~/Library/Containers/com.fiplab.copyclip*',
                  ]
end
