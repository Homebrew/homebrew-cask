cask 'marta' do
  version '0.6'
  sha256 '4383da29b48590a5dd0eb4819b0f2b0579b33ccb8dd764eb9217ed658721dc69'

  url "https://updates.marta.yanex.org/release/Marta-#{version}.dmg"
  appcast 'https://updates.marta.yanex.org/release/appcast.xml'
  name 'Marta File Manager'
  homepage 'https://marta.yanex.org/'

  depends_on macos: '>= :sierra'

  app 'Marta.app'

  zap trash: [
               '~/Library/Application Support/org.yanex.marta',
               '~/Library/Caches/org.yanex.marta',
               '~/Library/Preferences/org.yanex.marta.plist',
               '~/Library/Saved Application State/org.yanex.marta.savedState',
             ]
end
