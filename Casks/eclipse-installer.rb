cask 'eclipse-installer' do
  version '4.11.0,2019-03:R'
  sha256 '7f19c21c6e324a1c3d9b5babc01b353a0b41b9ba4e159436a860342eeaaedce4'

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name 'Eclipse Installer'
  homepage 'https://eclipse.org/'

  app 'Eclipse Installer.app'

  caveats do
    depends_on_java
  end
end
