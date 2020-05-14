cask 'psi-plus' do
  version '1.4.1231-macOS10.13'
  sha256 'ab69719b1ecf205d337a627e0708938bbe9adb65b5f14a976745540c5eaa4436'

  # downloads.sourceforge.net/psiplus/ was verified as official when first introduced to the cask
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
