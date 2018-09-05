cask 'jenkins-menu' do
  version '0.2.0'
  sha256 'dc2b69ab27b99ed0b0c165ade90b504b7c8201213b5334c6d927affd8cf106b4'

  # github.com/qvacua/jenkins-menu was verified as official when first introduced to the cask
  url "https://github.com/qvacua/jenkins-menu/releases/download/v#{version}/Jenkins.Menu-#{version}.zip"
  appcast 'http://qvacua.com/jenkinsmenu/appcast.xml'
  name 'Jenkins Menu'
  homepage 'http://qvacua.com/'

  app 'Jenkins Menu.app'
end
