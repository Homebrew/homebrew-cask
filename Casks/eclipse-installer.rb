cask 'eclipse-installer' do
  version '4.6.1,neon:1a'
  sha256 '6dbfc18fa2fde0bc5fe497b5383f7e6029107f24240c35df74abfb66c0862ded'

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/R1/eclipse-inst-mac64.tar.gz&r=1"
  name 'Eclipse Installer'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse Installer.app'

  caveats do
    depends_on_java
  end
end
