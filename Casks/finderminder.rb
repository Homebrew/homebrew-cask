cask 'finderminder' do
  version '1.3'
  sha256 '0595c99aa34bfddcb78d86f256f076b902671313b964b3c62eaf1115275f1248'

  url "https://www.irradiatedsoftware.com/downloads/FinderMinder_#{version}.zip"
  appcast 'https://www.irradiatedsoftware.com/updates/profiles/finderminder.php'
  name 'FinderMinder'
  homepage 'https://www.irradiatedsoftware.com/labs/'

  app 'FinderMinder.app'

  zap trash: '~/Library/Preferences/com.irradiatedsoftware.FinderMinder.plist'
end
