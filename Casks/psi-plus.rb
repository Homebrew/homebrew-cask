cask 'psi-plus' do
  version '1.4.641-macOS10.12'
  sha256 '02693277820def46e0c47e8df1a2a41a63a43a29ec3d8c7cdb85f63d4fed73dc'

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
