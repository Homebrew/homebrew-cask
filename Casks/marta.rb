cask 'marta' do
  version '0.4.3'
  sha256 '4412e88b45c42bdc3e328493d1f7d43ace30496a9be28da345a0d39bf4528d74'

  url "https://marta.yanex.org/updates/Marta-#{version}.dmg"
  appcast 'https://marta.yanex.org/updates/appcast.xml',
          checkpoint: '68f993819b175941f0993788d10eae6029b1b08c9014e2f5b89e2f85e2f603a2'
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
