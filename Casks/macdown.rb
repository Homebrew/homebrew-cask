cask :v1 => 'macdown' do
  version '0.5.3'
  sha256 '1225f0c93f9a54b8df2e0348ed2cfc32eb0ee74bef8ba4006805cd3014ef0af7'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/uranusjr/macdown/releases/download/v#{version}/MacDown.app.zip"
  appcast 'https://github.com/uranusjr/macdown/releases.atom',
          :sha256 => 'c64fa486514c00101c5a44e92a8562f270bb5474e0e4587e085add5cb0a64e70'
  name 'MacDown'
  homepage 'http://macdown.uranusjr.com/'
  license :mit

  app 'MacDown.app'
  binary 'MacDown.app/Contents/SharedSupport/bin/macdown'

  zap :delete => ['~/Library/Preferences/com.uranusjr.macdown.plist',
                  '~/Library/Application Support/MacDown']
end
