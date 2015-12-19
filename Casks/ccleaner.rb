cask 'ccleaner' do
  version '1.11.336'
  sha256 '811a758772125bf6be99c655098f15422f4f7834575fb687c744547cf9ebed74'

  url "http://download.piriform.com/mac/CCMacSetup#{version.sub(%r{^(\d+)\.(\d+).*},'\1\2')}.dmg"
  name 'CCleaner'
  homepage 'https://www.piriform.com/ccleaner'
  license :freemium
  tags :vendor => 'Piriform'

  zap :delete => [
    '~/Library/Application Support/CCleaner',
    '~/Library/Caches/com.piriform.ccleaner',
    '~/Library/Preferences/com.piriform.ccleaner.plist',
    '~/Library/Saved Application State/com.piriform.ccleaner.savedState'
  ]

  app 'CCleaner.app'
end
