cask 'eclipse-installer' do
  version '4.9.0,2018-09:R'
  sha256 'bc419431b18846547c6b0c7d19b50e4494ec799e050c4f7461a8234e5e171ac5'

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name 'Eclipse Installer'
  homepage 'https://eclipse.org/'

  depends_on macos: '>= :leopard'

  app 'Eclipse Installer.app'

  caveats do
    depends_on_java
  end
end
