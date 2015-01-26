cask :v1 => 'quicklock' do
  version :latest
  sha256 :no_check

  url 'http://cl.ly/2C1b3Y0u3E2Y/download/QuickLock.app.zip'
  name 'QuickLock'
  homepage 'http://www.quicklockapp.com/'
  license :unknown

  app 'QuickLock.app'
end
