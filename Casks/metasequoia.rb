cask 'metasequoia' do
  version '4.5.7'
  sha256 :no_check

  # metaseq2.sakura.ne.jp was verified as official when first introduced to the cask
  url "http://metaseq2.sakura.ne.jp/metaseq/Metasequoia-#{version}-Installer.dmg"
  name 'Metasequoia'
  homepage 'http://www.metaseq.net/'

  pkg "Metasequoia-#{version}-Installer.pkg"

  uninstall pkgutil: 'com.tetraface.Metasequoia.pkg'
end
