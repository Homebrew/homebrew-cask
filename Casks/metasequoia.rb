cask 'metasequoia' do
  version '4.6.3'
  sha256 'e873e35293b5d2eeb5aac48374d3d0db91d51bed5f58a7825a53b83be1ac9297'

  # metaseq2.sakura.ne.jp was verified as official when first introduced to the cask
  url "http://metaseq2.sakura.ne.jp/metaseq/Metasequoia-#{version}-Installer.dmg"
  appcast 'http://www.metaseq.net/en/release_note.html',
          checkpoint: 'fa3f9cddfb87d7bb3f95dad437efa714f27079e6898daa5e1c7e36b45928e7ef'
  name 'Metasequoia'
  homepage 'http://www.metaseq.net/'

  pkg "Metasequoia-#{version}-Installer.pkg"

  uninstall pkgutil: 'com.tetraface.Metasequoia.pkg'
end
