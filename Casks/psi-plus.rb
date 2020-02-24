cask 'psi-plus' do
  version '1.4.1000-macOS10.13'
  sha256 '219ad385ec40ba0ba09a4e146832d07eb9f588569922dccafe4f9c0902d34585'

  # downloads.sourceforge.net/psiplus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/psiplus/Psi+-#{version}-x86_64.dmg"
  appcast 'https://sourceforge.net/projects/psiplus/rss?path=/macOS/tehnick'
  name 'Psi+'
  homepage 'https://psi-plus.com/'

  depends_on macos: '>= :sierra'

  app 'Psi+.app'

  uninstall quit: 'com.psi-plus'

  zap trash: [
               '~/Library/Saved Application State/com.psi-plus.savedState',
               '~/Library/Caches/Psi+',
               '~/Library/Application Support/Psi+',
             ]
end
