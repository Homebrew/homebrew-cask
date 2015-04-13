cask :v1 => 'macdown' do
  version :latest
  sha256 :no_check

  url 'http://macdown.uranusjr.com/download/latest/'
  appcast 'http://macdown.uranusjr.com/sparkle/macdown/appcast.xml',
          :sha256 => '81345496a64ca0d0d7ff8936e43ff0e1041ab6ebd61d534bc67f3357291b7478'
  name 'MacDown'
  homepage 'http://macdown.uranusjr.com/'
  license :mit

  app 'MacDown.app'

  zap :delete => ['~/Library/Preferences/com.uranusjr.macdown.plist',
                  '~/Library/Application Support/MacDown']
end
