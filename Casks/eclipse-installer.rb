cask 'eclipse-installer' do
  version '4.15.0,2020-03:R'
  sha256 'c5c748789ff9329d31fab103c887204bb138dd91fb13d4a7800fd28eb0ade46a'

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name 'Eclipse Installer'
  homepage 'https://eclipse.org/'

  app 'Eclipse Installer.app'

  caveats do
    depends_on_java
  end
end
