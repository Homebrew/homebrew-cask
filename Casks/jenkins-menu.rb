cask :v1 => 'jenkins-menu' do
  version '0.2.0'
  sha256 'dc2b69ab27b99ed0b0c165ade90b504b7c8201213b5334c6d927affd8cf106b4'

  url  "https://github.com/qvacua/jenkins-menu/releases/download/v#{version}/Jenkins.Menu-#{version}.zip"
  appcast 'http://qvacua.com/jenkinsmenu/appcast.xml',
          :sha256 => '420aaafc9de36c174ba1b43d1dfd4719603808f1754da8b7bb2a4ef1e934429d'
  homepage 'http://qvacua.com'
  license :oss

  app 'Jenkins Menu.app'
end
