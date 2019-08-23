cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version '5.6.9'
  sha256 '1561520f684a1c22de2fcc780b8c72b69444e3f2689801aa3ed4c3b2b34b008d'

  url 'https://desktop.icons8.com/updates/mac/Icons8App_for_Mac_OS.dmg'
  appcast 'https://desktop.icons8.com/updates/mac/icons8_cast.xml'
  name 'Icons8 App'
  homepage 'https://icons8.com/'

  app 'Icons8.app'

  zap trash: [
               '~/Library/Preferences/com.visualpharm.Icons8.plist',
               '~/Library/Containers/com.visualpharm.StandaloneLoginHelper',
               '~/Library/Caches/com.visualpharm.Icons8',
               '~/Library/Application\ Support/com.visualpharm.Icons8',
               '~/Library/Application\ Scripts/com.visualpharm.StandaloneLoginHelper',
             ]
end
