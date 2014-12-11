cask :v1 => 'mavensmate' do
  version :latest
  sha256 :no_check

  url 'http://push.mavensconsulting.netdna-cdn.com/mavensmate/builds/MavensMate.zip'
  appcast 'http://mavensconsulting.com/mavensmate/builds/appcast.xml'
  homepage 'http://mavensmate.com'
  license :unknown    # todo: improve this machine-generated value

  app 'MavensMate.app'
end
