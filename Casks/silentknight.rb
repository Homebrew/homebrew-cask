cask 'silentknight' do
  version '1.8'
  sha256 '6076892e23d989f81f3050ef2a70ebe12979dd8480fb40a3c76890927d277550'

  # eclecticlightdotcom.files.wordpress.com/ was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.major}/#{version.after_comma.minor}/silentknight#{version.before_comma.no_dots}.zip"
  appcast 'https://eclecticlight.co/lockrattler-systhist/'
  name 'SilentKnight'
  homepage 'https://eclecticlight.co/lockrattler-systhist/'

  app "silentknight#{version.before_comma.no_dots}/SilentKnight.app"

  zap trash: [
               '~/Library/Caches/co.eclecticlight.SilentKnight',
               '~/Library/Preferences/co.eclecticlight.SilentKnight.plist',
               '~/Library/Saved Application State/co.eclecticlight.SilentKnight.savedState',
             ]
end
