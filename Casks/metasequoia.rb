cask 'metasequoia' do
  version '4.7.1'
  sha256 '5650456fa09822f310c626690b4d80b3a9e74d5ba1ed23aa040088132b6fd339'

  url "https://www.metaseq.net/metaseq/Metasequoia-#{version}-Installer.dmg"
  appcast 'https://www.metaseq.net/en/download.html'
  name 'Metasequoia'
  homepage 'https://www.metaseq.net/'

  pkg "Metasequoia-#{version}-Installer.pkg"

  uninstall pkgutil: 'com.tetraface.Metasequoia.pkg'
end
