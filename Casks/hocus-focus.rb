cask 'hocus-focus' do
  version '1.3'
  sha256 '8a51419112d9626497217a9953460c075480a139e1b1a47b175454be8a04f85a'

  url "http://hocusfoc.us/static/releases/hocusfocus-#{version}.zip"
  appcast 'http://hocusfoc.us/updates.xml',
          :checkpoint => 'fe0ae7184a40c71315e010a7307ec5bb51fca10698a8647a94d482db3bc2bd9b'
  name 'Hocus Focus'
  homepage 'http://hocusfoc.us/'
  license :gratis

  app 'Hocus Focus.app'

  zap :delete => [
                   '~/Library/Caches/com.uglyapps.HocusFocus',
                   '~/Library/Application Support/com.uglyapps.HocusFocus',
                   '~/Library/Preferences/com.uglyapps.HocusFocus.plist',
                 ]
end
