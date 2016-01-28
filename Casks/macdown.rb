cask 'macdown' do
  version '0.5.4'
  sha256 '051627a320cd53769733fcff981b41d098174493c94a1bf9879e2c0b2d8bda4e'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/uranusjr/macdown/releases/download/v#{version}/MacDown.app.zip"
  appcast 'https://github.com/uranusjr/macdown/releases.atom',
          checkpoint: '7ddaf9ef6a974fbd5ac01764cb5b8a46ff369420a979949858615e5fb52201ef'
  name 'MacDown'
  homepage 'http://macdown.uranusjr.com/'
  license :mit

  app 'MacDown.app'
  binary 'MacDown.app/Contents/SharedSupport/bin/macdown'

  zap delete: ['~/Library/Preferences/com.uranusjr.macdown.plist',
               '~/Library/Application Support/MacDown']
end
