cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version '5.6.7'
  sha256 '6f351bb8d32cf3758652b280c7b684d9481d453b719749d6bd1d5c6719e0967f'

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
