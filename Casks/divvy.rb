cask 'divvy' do
  version '1.5.1'
  sha256 '2823c41a8d5e4f0e27760a87b1fdb8acf9b6a48eef4074421e6daa1119f89a53'

  url "https://mizage.com/downloads/Divvy_#{version}.zip"
  appcast 'https://mizage.com/updates/profiles/divvy.php',
          checkpoint: 'd3686656422fbfed68cb31b4a495d5eaa80ce581a696f2ab6488ab0a70ffb55b'
  name 'Divvy'
  homepage 'https://mizage.com/divvy/'

  app 'Divvy.app'

  zap delete: [
                '~/Library/Preferences/com.mizage.direct.Divvy.plist',
                '~/Library/Preferences/com.mizage.Divvy.plist',
              ]
end
