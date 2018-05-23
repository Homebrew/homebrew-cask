cask 'ccleaner' do
  version '1.14.451'
  sha256 'be3411c927b919d1332cd29e01b526c3529139c99f86a0c9db1e12918259ce70'

  url "https://download.piriform.com/mac/CCMacSetup#{version.sub(%r{^(\d+)\.(\d+).*}, '\1\2')}.dmg"
  name 'Piriform CCleaner'
  homepage 'https://www.piriform.com/ccleaner-mac'

  app 'CCleaner.app'

  zap trash: [
               '~/Library/Application Support/CCleaner',
               '~/Library/Caches/com.piriform.ccleaner',
               '~/Library/Preferences/com.piriform.ccleaner.plist',
               '~/Library/Saved Application State/com.piriform.ccleaner.savedState',
               '~/Library/Cookies/com.piriform.ccleaner.binarycookies',
               '/Users/Shared/CCleaner',
             ]
end
