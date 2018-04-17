cask 'finderminder' do
  version '1.3'
  sha256 '0595c99aa34bfddcb78d86f256f076b902671313b964b3c62eaf1115275f1248'

  url "https://www.irradiatedsoftware.com/downloads/FinderMinder_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/finderminder.php',
          checkpoint: '5f07a947f8e34f2759bdf7073446973122c43680509bf67874ab495ff051c64f'
  name 'FinderMinder'
  homepage 'https://www.irradiatedsoftware.com/labs/'

  accessibility_access true

  app 'FinderMinder.app'

  zap trash: '~/Library/Preferences/com.irradiatedsoftware.FinderMinder.plist'
end
