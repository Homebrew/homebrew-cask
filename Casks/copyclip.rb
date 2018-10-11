cask 'copyclip' do
  version '2.9.6'
  sha256 '83c66ef6967991e27b9356c19fc6df52f0fabad4f4d22869dbff8dfb0bc61450'

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
