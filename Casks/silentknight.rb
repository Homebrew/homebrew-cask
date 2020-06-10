cask 'silentknight' do
  version '1.7'
  sha256 '23b0c313244c4e40954d648a313cd3a9333db567b6e6b2aca591b3c610923cf4'

  # eclecticlightdotcom.files.wordpress.com/ was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/2020/05/silentknight#{version.no_dots}.zip"
  appcast 'https://eclecticlight.co/lockrattler-systhist/'
  name 'SilentKnight'
  homepage 'https://eclecticlight.co/lockrattler-systhist/'

  app "silentknight#{version.no_dots}/SilentKnight.app"

  zap trash: [
               '~/Library/Caches/co.eclecticlight.SilentKnight',
               '~/Library/Preferences/co.eclecticlight.SilentKnight.plist',
               '~/Library/Saved Application State/co.eclecticlight.SilentKnight.savedState',
             ]
end
