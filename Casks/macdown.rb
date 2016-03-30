cask 'macdown' do
  version '0.6'
  sha256 '2f129112df7393b5987c811f0001c0e0c8a4612566db1fcbbb4170367bc781f8'

  # github.com/uranusjr/macdown was verified as official when first introduced to the cask
  url "https://github.com/uranusjr/macdown/releases/download/v#{version}/MacDown.app.zip"
  appcast 'https://github.com/uranusjr/macdown/releases.atom',
          checkpoint: 'dc94fe807286a33b5e4c89895fa58c1a01fb217d9e5ea5966143570be98bcbff'
  name 'MacDown'
  homepage 'http://macdown.uranusjr.com/'
  license :mit

  app 'MacDown.app'
  binary 'MacDown.app/Contents/SharedSupport/bin/macdown'

  zap delete: ['~/Library/Preferences/com.uranusjr.macdown.plist',
               '~/Library/Application Support/MacDown']
end
