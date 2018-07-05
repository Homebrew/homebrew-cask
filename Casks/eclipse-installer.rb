cask 'eclipse-installer' do
  version '4.8.0,photon,R'
  sha256 '7606a6b2e84c9ce1654313ba02b1ae3cf9b67015a73c30e7c0bd41f0f1c7adaa'

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name 'Eclipse Installer'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse Installer.app'

  caveats do
    depends_on_java
  end
end
