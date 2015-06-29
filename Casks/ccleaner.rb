cask :v1 => 'ccleaner' do
  version '1.09.313'
  sha256 '464a75b9d038dec0334f70846d5ea68679ff907e57b9ec373331c5da18cb4865'

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
