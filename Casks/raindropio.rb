cask 'raindropio' do
  version :latest
  sha256 :no_check

  url 'https://raindrop.io/releases/mac/Raindrop.dmg'
  name 'Raindrop.io'
  homepage 'https://raindrop.io/'

  app 'Raindrop.io.app'

  zap trash: [
               '~/Library/Application Support/Raindrop.io',
               '~/Library/Caches/com.apple.Safari/Extensions/Raindrop.io.safariextension',
               '~/Library/Cookies/io.raindrop.mac.binarycookies',
               '~/Library/Preferences/io.raindrop.mac.helper.plist',
               '~/Library/Preferences/io.raindrop.mac.plist',
               '~/Library/Safari/Extensions/Raindrop.io.safariextz',
               '~/Library/Saved Application State/io.raindrop.mac.savedState',
             ]
end
