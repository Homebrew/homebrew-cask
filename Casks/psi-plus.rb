cask 'psi-plus' do
  version '1.4.663-macOS10.12'
  sha256 'dd33e24a0d3206fc1598ed1c9d295b5f761d11206738ace5a55d11c72b86ee00'

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
