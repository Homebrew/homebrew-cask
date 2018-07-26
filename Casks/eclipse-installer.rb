cask 'eclipse-installer' do
  version '4.8.0,photon,R'
  sha256 '8ba187e917ca4d16938f2208b724c6b6fa09df3d7f0baff47afaa6b49b7d6d5c'

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name 'Eclipse Installer'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse Installer.app'

  caveats do
    depends_on_java
  end
end
