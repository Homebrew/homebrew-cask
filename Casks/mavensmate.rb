class Mavensmate < Cask
  url 'http://push.mavensconsulting.netdna-cdn.com/mavensmate/builds/MavensMate.zip'
  appcast 'http://mavensconsulting.com/mavensmate/builds/appcast.xml'
  homepage 'http://mavensmate.com'
  version 'latest'
  sha256 :no_check
  link 'MavensMate.app'
end
