cask :v1 => 'macdown' do
  version :latest
  sha256 :no_check

  url 'http://macdown.uranusjr.com/download/latest/'
  appcast 'http://macdown.uranusjr.com/sparkle/macdown/appcast.xml',
          :sha256 => '989bf03d9f106ad1e9c47b62476c350d353e57c3de2478e30da5d466c5bef4aa'
  name 'MacDown'
  homepage 'http://macdown.uranusjr.com/'
  license :mit

  app 'MacDown.app'

  zap :delete => ['~/Library/Preferences/com.uranusjr.macdown.plist',
                  '~/Library/Application Support/MacDown']
end
