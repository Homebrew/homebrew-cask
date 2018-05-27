cask 'proxifier' do
  version '2.22'
  sha256 'fe998ac7bbbfcf2bf6cc422e84099a11439711fa4a86618970dade62107c2d0d'

  url 'https://www.proxifier.com/distr/ProxifierMac.dmg'
  appcast 'https://www.proxifier.com/changelog/mac.html',
          checkpoint: '5338459932135407df8731e09ce089368e25194c544de9db9c6d5c8bda942f69'
  name 'Proxifier'
  homepage 'https://www.proxifier.com/mac/'

  auto_updates true

  app 'Proxifier.app'

  zap trash: [
               '~/Library/Application Support/Proxifier',
               '~/Library/Caches/com.initex.proxifier.macosx',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/Proxifier Help*',
               '~/Library/Logs/Proxifier',
               '~/Library/Preferences/com.initex.proxifier.macosx.plist',
               '~/Library/Saved Application State/com.initex.proxifier.macosx.savedState',
             ]
end
