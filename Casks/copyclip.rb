cask 'copyclip' do
  version '2.9.95'
  sha256 'e0ff793fa16b3e436e219eb6edb76149d463a5161babb6fd675c433cc094b6f7'

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
