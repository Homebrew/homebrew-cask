cask 'eclipse-installer' do
  version '4.6.2,neon:2a'
  sha256 '8ff79e95be4bc8f88d75723cd068bc37545eb78f297eed0c544f9830b008fc3b'

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/R#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name 'Eclipse Installer'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse Installer.app'

  caveats do
    depends_on_java
  end
end
