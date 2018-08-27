cask 'marta' do
  version '0.5.3'
  sha256 'be3aa269282de1e0bef0af2286d71624a54504669ddc19fc6aa369b9148d1de3'

  url "https://updates.marta.yanex.org/release/Marta-#{version}.dmg"
  appcast 'https://updates.marta.yanex.org/release/appcast.xml'
  name 'Marta File Manager'
  homepage 'https://marta.yanex.org/'

  app 'Marta.app'

  zap trash: [
               '~/Library/Application Support/org.yanex.marta',
               '~/Library/Caches/org.yanex.marta',
               '~/Library/Preferences/org.yanex.marta.plist',
               '~/Library/Saved Application State/org.yanex.marta.savedState',
             ]
end
