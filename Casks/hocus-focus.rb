cask :v1 => 'hocus-focus' do
  version '1.2'
  sha256 'ac3f26ed6f4149cfd7c115c8c2502b381d84fb5c61a64759852fd0db3029b5e0'

  url "http://hocusfoc.us/static/releases/hocusfocus-#{version}.zip"
  name 'Hocus Focus'
  appcast 'http://hocusfoc.us/updates.xml',
          :sha256 => '96e97e3faeee0def7f57dc292ccaae44ccdf52e1c659e572eb7c420f4dcb679e'
  homepage 'http://hocusfoc.us/'
  license :gratis
  app 'Hocus Focus.app'
  zap :delete => [
                  '~/Library/Caches/com.uglyapps.HocusFocus',
                  '~/Library/Application Support/com.uglyapps.HocusFocus',
                  '~/Library/Preferences/com.uglyapps.HocusFocus.plist',
                 ]
end
