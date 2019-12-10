cask 'copyclip' do
  version '2.9.92'
  sha256 '9806fa5d22e79ecbcd6cb1d217b0b8b6ad723b0fd19619229ec3deaa9b6a67e0'

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
