cask 'metasequoia' do
  version '4.5.9'
  sha256 'ed352f7958e7685bb19e43f15f4b8bf345b8badcce2c16905c51953d6c112036'

  # metaseq2.sakura.ne.jp was verified as official when first introduced to the cask
  url "http://metaseq2.sakura.ne.jp/metaseq/Metasequoia-#{version}-Installer.dmg"
  appcast 'http://www.metaseq.net/en/release_note.html',
          checkpoint: '7503437d555cf0889092eb2fe4f0b692ad5ea3165e71d5ae92f7075f04a118f4'
  name 'Metasequoia'
  homepage 'http://www.metaseq.net/'

  pkg "Metasequoia-#{version}-Installer.pkg"

  uninstall pkgutil: 'com.tetraface.Metasequoia.pkg'
end
