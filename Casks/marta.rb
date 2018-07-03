cask 'marta' do
  version '0.5.2'
  sha256 'c5f75aba28cdf930700a7b6503bcf7a65d37aa3d00ccc183cb15790c1770ba0b'

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
