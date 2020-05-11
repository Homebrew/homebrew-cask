cask 'psi-plus' do
  version '1.4.1209-macOS10.13'
  sha256 '1cd69e575538f052d3183d816ff4f3c63fca42ffb76c0160bcdba14e51fb2fd4'

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
