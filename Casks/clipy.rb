cask 'clipy' do
  version '1.1.4'
  sha256 'ad1199738cdd55eae433de8aed97acebf704d9075613391f65badf5dc5020b3c'

  # github.com/Clipy/Clipy was verified as official when first introduced to the cask
  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'https://github.com/Clipy/Clipy/releases.atom',
          checkpoint: 'ff61df8e08b943de0835016a5cd76aa72e16b33e44483812174d3adfe9200bc2'
  name 'Clipy'
  homepage 'https://clipy-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Clipy.app'

  uninstall login_item: 'Clipy',
            quit:       'com.clipy-app.Clipy'

  zap delete: [
                '~/Library/Caches/com.clipy-app.Clipy',
                '~/Library/Caches/com.crashlytics.data/com.clipy-app.Clipy',
                '~/Library/Caches/io.fabric.sdk.mac.data/com.clipy-app.Clipy',
                '~/Library/Cookies/com.clipy-app.Clipy.binarycookies',
              ],
      trash:  [
                '~/Library/Application Support/Clipy',
                '~/Library/Application Support/com.clipy-app.Clipy',
                '~/Library/Preferences/com.clipy-app.Clipy.plist',
              ]
end
