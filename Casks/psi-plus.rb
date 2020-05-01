cask 'psi-plus' do
  version '1.4.1147-macOS10.13'
  sha256 '5b3ce37d4babb6d684169e71c5ba6a0a7c934b4746f388b64c1bc337ea103c36'

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
