cask 'psi-plus' do
  version '1.4.886-macOS10.12'
  sha256 '71d3207922df225b9bbf516f171f35500c432de6bf04b2c0dcd8a0a6c7ca403b'

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
