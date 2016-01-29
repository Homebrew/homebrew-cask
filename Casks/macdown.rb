cask 'macdown' do
  version '0.5.5'
  sha256 '79d051fb03e953cdc27ae2a45f32cc956fa1471b8031e7284dee01fd19ad22c5'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/uranusjr/macdown/releases/download/v#{version}/MacDown.app.zip"
  appcast 'https://github.com/uranusjr/macdown/releases.atom',
          checkpoint: 'f9e7f793b7bce3bbdbf6c8fc69036c0fad9d5dd30f934733f449df820fd23c8e'
  name 'MacDown'
  homepage 'http://macdown.uranusjr.com/'
  license :mit

  app 'MacDown.app'
  binary 'MacDown.app/Contents/SharedSupport/bin/macdown'

  zap delete: ['~/Library/Preferences/com.uranusjr.macdown.plist',
               '~/Library/Application Support/MacDown']
end
