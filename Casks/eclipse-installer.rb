cask 'eclipse-installer' do
  version '4.16.0,2020-06:R'
  sha256 '523ba12b8499397f991f249ba981a531420ce132a96cd16f386a6222555290e0'

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name 'Eclipse Installer'
  homepage 'https://eclipse.org/'

  app 'Eclipse Installer.app'

  caveats do
    depends_on_java
  end
end
