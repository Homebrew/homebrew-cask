cask :v1 => 'ccleaner' do
  version '1.10.335'
  sha256 '9f02434fb991c78634fd1a6a2a3819ecedd567fbe07fe7eec96bbf5628f6eadd'

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
