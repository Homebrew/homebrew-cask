cask 'quicklock' do
  version :latest
  sha256 :no_check

  # cl.ly is the official download host per the vendor homepage
  url 'https://cl.ly/2C1b3Y0u3E2Y/download/QuickLock.app.zip'
  appcast 'http://quicklockapp.com/appcast.xml',
          :checkpoint => '582556c374e09cc083dc8b3085787ce8323bb38ba6396ccf0327d08f35fc7a94'
  name 'QuickLock'
  homepage 'http://www.quicklockapp.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'QuickLock.app'
end
