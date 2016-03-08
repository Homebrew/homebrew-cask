cask 'ccleaner' do
  version '1.12.339'
  sha256 'cb29840cd97c3a05e86f843b9644ff8684881e7c3ff56f6a915c28121da02736'

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
