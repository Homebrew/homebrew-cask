cask 'macdown' do
  version '0.5.5.1'
  sha256 '3fba5cbe2e0e7a489e5262c7ef73da500895cef3881889ef961c95f5c3811216'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/uranusjr/macdown/releases/download/v#{version}/MacDown.app.zip"
  appcast 'https://github.com/uranusjr/macdown/releases.atom',
          checkpoint: '29f4a235beeda5f90f4c8c133aa02cebd355de416beae8e074ad1b7f86942866'
  name 'MacDown'
  homepage 'http://macdown.uranusjr.com/'
  license :mit

  app 'MacDown.app'
  binary 'MacDown.app/Contents/SharedSupport/bin/macdown'

  zap delete: ['~/Library/Preferences/com.uranusjr.macdown.plist',
               '~/Library/Application Support/MacDown']
end
