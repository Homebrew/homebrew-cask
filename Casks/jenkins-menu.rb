cask 'jenkins-menu' do
  version '0.2.0'
  sha256 'dc2b69ab27b99ed0b0c165ade90b504b7c8201213b5334c6d927affd8cf106b4'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/qvacua/jenkins-menu/releases/download/v#{version}/Jenkins.Menu-#{version}.zip"
  appcast 'http://qvacua.com/jenkinsmenu/appcast.xml',
          checkpoint: '7d022aadeae3d7bafc6a0b580f4159b4b14d15fe24d08f360835557d5e2c5156'
  name 'Jenkins Menu'
  homepage 'http://qvacua.com'
  license :gpl

  app 'Jenkins Menu.app'
end
