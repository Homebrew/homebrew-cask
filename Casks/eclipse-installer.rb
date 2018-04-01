cask 'eclipse-installer' do
  version '4.7.0,oxygen:R'
  sha256 '610b28ad30fc9ba044c87cca87ef66abdbe938d3ea50d112a81e36f953a72c0e'

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name 'Eclipse Installer'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse Installer.app'

  caveats do
    depends_on_java
  end
end
