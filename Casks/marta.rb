cask 'marta' do
  version '0.6.2'
  sha256 'a50fd738ffbb633b7965427305632e2221ae67b1be54003c5a3d2ebccf461e47'

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
