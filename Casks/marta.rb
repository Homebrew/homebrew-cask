cask 'marta' do
  version '0.4.6'
  sha256 '3ca5ac09f598cc63ef56b3b770f770602e74ba19f7f79dcab406e108f991e02d'

  url "https://marta.yanex.org/updates/Marta-#{version}.dmg"
  appcast 'https://marta.yanex.org/updates/appcast.xml',
          checkpoint: '6da25ee66e0885d4c9e61a75d0d429dd3877be662436dadb6bc07820445aea63'
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
