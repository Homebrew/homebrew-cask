cask 'metasequoia' do
  version '4.5.8'
  sha256 '04ebb2ca9e259b44989b16fe340676b20478a2e63321b455e289f444ac0954af'

  # metaseq2.sakura.ne.jp was verified as official when first introduced to the cask
  url "http://metaseq2.sakura.ne.jp/metaseq/Metasequoia-#{version}-Installer.dmg"
  appcast 'http://www.metaseq.net/en/release_note.html',
          checkpoint: '54cb41a23ddd1fb1207429bd965239785e285648d9dacaea202efd3c7a37e845'
  name 'Metasequoia'
  homepage 'http://www.metaseq.net/'

  pkg "Metasequoia-#{version}-Installer.pkg"

  uninstall pkgutil: 'com.tetraface.Metasequoia.pkg'
end
