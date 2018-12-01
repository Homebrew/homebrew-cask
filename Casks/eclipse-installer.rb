cask 'eclipse-installer' do
  version '4.8.0,photon:R'
  sha256 'eed8140f1fb1ba3145470c147f92dac7c50a12351902eefd0139f91474f77ebe'

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name 'Eclipse Installer'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse Installer.app'

  caveats do
    depends_on_java
  end
end
