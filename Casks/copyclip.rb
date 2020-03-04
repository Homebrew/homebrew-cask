cask 'copyclip' do
  version '2.9.95'
  sha256 '24e0aae9e3bc84d5a80c949952f09de379ba5d2624f622af2e381d18e98e954e'

  # rink.hockeyapp.net/api/2/apps/ffb436060eb379c0cb23097402e92379 was verified as official when first introduced to the cask
  url 'https://rink.hockeyapp.net/api/2/apps/ffb436060eb379c0cb23097402e92379?format=zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/ffb436060eb379c0cb23097402e92379'
  name 'CopyClip'
  homepage 'https://fiplab.com/apps/copyclip-for-mac'

  app "CopyClip #{version.major}.app"

  uninstall quit: "com.fiplab.copyclip#{version.major}"

  zap delete: [
                '~/Library/Application Scripts/com.fiplab.copyclip*helper',
                '~/Library/Application Scripts/com.fiplab.copyclip*',
                '~/Library/Containers/com.fiplab.copyclip*helper',
                '~/Library/Containers/com.fiplab.copyclip*',
              ]
end
