cask 'hocus-focus' do
  version '1.3'
  sha256 '8a51419112d9626497217a9953460c075480a139e1b1a47b175454be8a04f85a'

  url "http://hocusfoc.us/static/releases/hocusfocus-#{version}.zip"
  appcast 'http://hocusfoc.us/updates.xml',
          :sha256 => 'afdeac54f1465741719415aa1db437888cad07486fe6bc90f5a8cee959ce39c6'
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
