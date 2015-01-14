cask :v1 => 'macdown' do
  version '0.4.1'
  sha256 'e5e5aad8726d6eff3267fb6286a86c67bd48e3c137baf6b203e6a505c60d7b34'

  url "http://macdown.uranusjr.com/download/v#{version}/"
  appcast 'http://macdown.uranusjr.com/sparkle/macdown/appcast.xml',
          :sha256 => '81345496a64ca0d0d7ff8936e43ff0e1041ab6ebd61d534bc67f3357291b7478'
  homepage 'http://macdown.uranusjr.com/'
  license :mit

  app 'MacDown.app'

  zap :delete => ['~/Library/Preferences/com.uranusjr.macdown.plist',
                  '~/Library/Application Support/MacDown']
end
