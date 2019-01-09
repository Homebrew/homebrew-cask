cask 'eclipse-installer' do
  version '4.10.0,2018-12:R'
  sha256 '8164fc2ff8b5889324e91b1ba2510945d33730af324b49432a4ca11f25e7a367'

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name 'Eclipse Installer'
  homepage 'https://eclipse.org/'

  app 'Eclipse Installer.app'

  caveats do
    depends_on_java
  end
end
