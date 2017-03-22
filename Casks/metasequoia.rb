cask 'metasequoia' do
  version '4.5.7'
  sha256 '0cd88d99379bdf8dfa42fd13ee970d8921f6d5eb3d892f76e4a7c76d68dc9e6d'

  # metaseq2.sakura.ne.jp was verified as official when first introduced to the cask
  url "http://metaseq2.sakura.ne.jp/metaseq/Metasequoia-#{version}-Installer.dmg"
  appcast 'http://www.metaseq.net/en/download.html',
          checkpoint: '3d7bb36e48f58376162495577b3a17d211830790db6cfff259d050f0f4a16c8b'
  name 'Metasequoia'
  homepage 'http://www.metaseq.net/'

  pkg "Metasequoia-#{version}-Installer.pkg"

  uninstall pkgutil: 'com.tetraface.Metasequoia.pkg'
end
