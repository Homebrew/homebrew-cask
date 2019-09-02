cask 'metasequoia' do
  version '4.7.0'
  sha256 '4b7bf9cd9b65417ccb6ea543a554897f132b0a56cc00d770e8c459d74abc7aac'

  # metaseq2.sakura.ne.jp was verified as official when first introduced to the cask
  url "http://metaseq2.sakura.ne.jp/metaseq/Metasequoia-#{version}-Installer.dmg"
  appcast 'http://www.metaseq.net/en/download.html'
  name 'Metasequoia'
  homepage 'http://www.metaseq.net/'

  pkg "Metasequoia-#{version}-Installer.pkg"

  uninstall pkgutil: 'com.tetraface.Metasequoia.pkg'
end
