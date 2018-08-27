cask 'clipy' do
  version '1.1.5'
  sha256 '58b49c5a63fcee8d9636922911d24055e85ecbe10cec3d2a4a86c6a377f44ab1'

  # github.com/Clipy/Clipy was verified as official when first introduced to the cask
  url "https://github.com/Clipy/Clipy/releases/download/#{version}/Clipy_#{version}.dmg"
  appcast 'https://github.com/Clipy/Clipy/releases.atom'
  name 'Clipy'
  homepage 'https://clipy-app.com/'

  depends_on macos: '>= :yosemite'

  app 'Clipy.app'

  uninstall login_item: 'Clipy',
            quit:       'com.clipy-app.Clipy'

  zap trash: [
               '~/Library/Application Support/Clipy',
               '~/Library/Application Support/com.clipy-app.Clipy',
               '~/Library/Caches/com.clipy-app.Clipy',
               '~/Library/Caches/com.crashlytics.data/com.clipy-app.Clipy',
               '~/Library/Caches/io.fabric.sdk.mac.data/com.clipy-app.Clipy',
               '~/Library/Cookies/com.clipy-app.Clipy.binarycookies',
               '~/Library/Preferences/com.clipy-app.Clipy.plist',
             ]
end
