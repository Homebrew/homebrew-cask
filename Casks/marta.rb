cask 'marta' do
  version '0.4.7'
  sha256 '263f8c36a4b91490f54e0c2b2c15bfb1b9b3c6456acb3ada811376dfafabe492'

  url "https://marta.yanex.org/updates/Marta-#{version}.dmg"
  appcast 'https://marta.yanex.org/updates/appcast.xml',
          checkpoint: 'c6a78d1e244f3ff506b19cd8c46e2155bb96392030da65483b7077baffe6cd76'
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
