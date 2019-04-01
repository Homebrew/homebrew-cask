cask 'psi-plus' do
  version '1.4.628-macOS10.12'
  sha256 '4098bc3aa08c23e3f5dc0fa82786ed021f69a10067073d31e7561ffdcb3577e1'

  # downloads.sourceforge.net/psiplus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/psiplus/Psi+-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/psiplus/rss'
  name 'Psi+'
  homepage 'https://psi-plus.com/'

  app 'Psi+.app'

  uninstall quit: 'com.psi-plus'

  zap trash: [
               '~/Library/Saved Application State/com.psi-plus.savedState',
               '~/Library/Caches/Psi+',
               '~/Library/Application Support/Psi+',
             ]
end
