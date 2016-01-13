cask 'quicklock' do
  version :latest
  sha256 :no_check

  # cl.ly is the official download host per the vendor homepage
  url 'https://cl.ly/2C1b3Y0u3E2Y/download/QuickLock.app.zip'
  appcast 'http://quicklockapp.com/appcast.xml',
          :checkpoint => '332f74701cbd6de19812e080bf312fc2b97394cd55be0bb1ca85b6774cd2795d'
  name 'QuickLock'
  homepage 'http://www.quicklockapp.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'QuickLock.app'
end
