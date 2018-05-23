cask 'eclipse-installer' do
  version '4.7.3,oxygen:R2'
  sha256 '072bc4231a831566619298a8764bab73f3715c686d25609361d34e28e69b9440'

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name 'Eclipse Installer'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse Installer.app'

  caveats do
    depends_on_java
  end
end
