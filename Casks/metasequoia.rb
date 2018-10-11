cask 'metasequoia' do
  version '4.6.8'
  sha256 'c4ea80fced7cba5f82d5ead8ccb7d9df1537729076fd434bcdd85e89cf21a583'

  # metaseq2.sakura.ne.jp was verified as official when first introduced to the cask
  url "http://metaseq2.sakura.ne.jp/metaseq/Metasequoia-#{version}-Installer.dmg"
  appcast 'http://www.metaseq.net/en/release_note.html'
  name 'Metasequoia'
  homepage 'http://www.metaseq.net/'

  pkg "Metasequoia-#{version}-Installer.pkg"

  uninstall pkgutil: 'com.tetraface.Metasequoia.pkg'
end
