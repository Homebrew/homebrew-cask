cask 'marta' do
  version '0.4.4'
  sha256 'de190a17f642a8c483af5565c848f3de9f9cf9aa59136b35db391fd763dcd956'

  url "https://marta.yanex.org/updates/Marta-#{version}.dmg"
  appcast 'https://marta.yanex.org/updates/appcast.xml',
          checkpoint: '3b9badfc82c57663249260e4e7ddb1c63725c95e653e514beaad259e9556d50d'
  name 'Marta File Manager'
  homepage 'https://marta.yanex.org/'

  app 'Marta.app'

  zap delete: [
                '~/Library/Caches/org.yanex.marta',
                '~/Library/Saved Application State/org.yanex.marta.savedState',
              ],
      trash:  [
                '~/Library/Application Support/org.yanex.marta',
                '~/Library/Preferences/org.yanex.marta.plist',
              ]
end
