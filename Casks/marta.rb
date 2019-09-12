cask 'marta' do
  version '0.7'
  sha256 '0692fabab3f423f740e563a6d5109091d6e2b5c5936b89885b3b6cc101766d5d'

  url "https://updates.marta.yanex.org/release/Marta-#{version}.dmg"
  appcast 'https://updates.marta.yanex.org/release/appcast.xml'
  name 'Marta File Manager'
  homepage 'https://marta.yanex.org/'

  depends_on macos: '>= :high_sierra'

  app 'Marta.app'

  zap trash: [
               '~/Library/Application Support/org.yanex.marta',
               '~/Library/Caches/org.yanex.marta',
               '~/Library/Preferences/org.yanex.marta.plist',
               '~/Library/Saved Application State/org.yanex.marta.savedState',
             ]
end
