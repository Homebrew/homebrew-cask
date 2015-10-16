cask :v1 => 'quicklock' do
  version :latest
  sha256 :no_check

  # cl.ly is the official download host per the vendor homepage
  url 'https://cl.ly/2C1b3Y0u3E2Y/download/QuickLock.app.zip'
  name 'QuickLock'
  appcast 'http://quicklockapp.com/appcast.xml',
          :sha256 => '2f6ef1ba9c7c94fc16948e8cc706388579bf898a738b383d54f4ff6f7dec41c6'
  homepage 'http://www.quicklockapp.com/'
  license :unknown

  app 'QuickLock.app'
end
