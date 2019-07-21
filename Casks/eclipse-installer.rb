cask 'eclipse-installer' do
  version '4.12.0,2019-06:R'
  sha256 '63bc49218695f61a4f9c4b5f465f32d08873412984b45856436b9ef95e67bdac'

  url "https://eclipse.org/downloads/download.php?file=/oomph/epp/#{version.after_comma.before_colon}/#{version.after_colon}/eclipse-inst-mac64.tar.gz&r=1"
  name 'Eclipse Installer'
  homepage 'https://eclipse.org/'

  app 'Eclipse Installer.app'

  caveats do
    depends_on_java
  end
end
