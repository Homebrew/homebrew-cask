cask 'copyclip' do
  version '2.9.91'
  sha256 '4e086a27c2d78559032431012d7b3d6f195a2ff9e01adbf4170c8b151d5cb51e'

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
