cask 'silentknight' do
  version '1.6'
  sha256 'b0584a3adacc0911305e15953ec7a018df08db82606d765fc7acced3d03577a9'

  # eclecticlightdotcom.files.wordpress.com/ was verified as official when first introduced to the cask
  url "https://eclecticlightdotcom.files.wordpress.com/2020/01/silentknight#{version.no_dots}.zip"
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
