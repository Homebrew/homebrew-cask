cask 'ccleaner' do
  version '1.13.442'
  sha256 '83a3b7176de777e7ad3e30487ae8b28e0cfdcc8989ef179945eacf3bb3a9862c'

  url "https://download.piriform.com/mac/CCMacSetup#{version.sub(%r{^(\d+)\.(\d+).*}, '\1\2')}.dmg"
  name 'Piriform CCleaner'
  homepage 'https://www.piriform.com/ccleaner'
  license :freemium

  app 'CCleaner.app'

  zap delete: [
                '~/Library/Application Support/CCleaner',
                '~/Library/Caches/com.piriform.ccleaner',
                '~/Library/Preferences/com.piriform.ccleaner.plist',
                '~/Library/Saved Application State/com.piriform.ccleaner.savedState',
              ]
end
