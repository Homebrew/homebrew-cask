cask 'eclipse-installer' do
  version '4.6.3,neon:3'
  sha256 '4b40a694b998c1b8f5819837ae50bdd9f7113d9c410760d966eb47d2aa2b4ddf'

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/R#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name 'Eclipse Installer'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse Installer.app'

  caveats do
    depends_on_java
  end
end
