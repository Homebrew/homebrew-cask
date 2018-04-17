cask 'metasequoia' do
  version '4.6.5'
  sha256 '93369a8f246e5691d7a7668c30466bdd1848bfb0983846e06dfa1d86a5864dfc'

  # metaseq2.sakura.ne.jp was verified as official when first introduced to the cask
  url "http://metaseq2.sakura.ne.jp/metaseq/Metasequoia-#{version}-Installer.dmg"
  appcast 'http://www.metaseq.net/en/release_note.html',
          checkpoint: '3240d82f4f54fc6f2466ee46c0dc7002603802b70cdc6e156d172eff293c6863'
  name 'Metasequoia'
  homepage 'http://www.metaseq.net/'

  pkg "Metasequoia-#{version}-Installer.pkg"

  uninstall pkgutil: 'com.tetraface.Metasequoia.pkg'
end
