cask 'icons8' do
  # note: "8" is not a version number, but an intrinsic part of the product name
  version '5.7.3'
  sha256 '0ba663e09d78ad4b83166be3523a5f8b27d88f862e0040dfd1689e23b53e82a4'

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
