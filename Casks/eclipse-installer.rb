cask 'eclipse-installer' do
  version '4.13.0,2019-09:R'
  sha256 'd53f7aff3a3fa607699f3e0ebf506d6c730cec49ac0cfb393f51d00cb005aef5'

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name 'Eclipse Installer'
  homepage 'https://eclipse.org/'

  app 'Eclipse Installer.app'

  caveats do
    depends_on_java
  end
end
