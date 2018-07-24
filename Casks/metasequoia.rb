cask 'metasequoia' do
  version '4.6.6'
  sha256 '297e242390598a9506b601b9f90c61977f2a37e91971957cf2b80728af72fa60'

  # metaseq2.sakura.ne.jp was verified as official when first introduced to the cask
  url "http://metaseq2.sakura.ne.jp/metaseq/Metasequoia-#{version}-Installer.dmg"
  appcast 'http://www.metaseq.net/en/release_note.html'
  name 'Metasequoia'
  homepage 'http://www.metaseq.net/'

  pkg "Metasequoia-#{version}-Installer.pkg"

  uninstall pkgutil: 'com.tetraface.Metasequoia.pkg'
end
