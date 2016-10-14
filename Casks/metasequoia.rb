cask 'metasequoia' do
  version '4.5.7'
  sha256 '0cd88d99379bdf8dfa42fd13ee970d8921f6d5eb3d892f76e4a7c76d68dc9e6d'

  # metaseq2.sakura.ne.jp was verified as official when first introduced to the cask
  url "http://metaseq2.sakura.ne.jp/metaseq/Metasequoia-#{version}-Installer.dmg"
  name 'Metasequoia'
  homepage 'http://www.metaseq.net/'

  pkg "Metasequoia-#{version}-Installer.pkg"

  uninstall pkgutil: 'com.tetraface.Metasequoia.pkg'
end
