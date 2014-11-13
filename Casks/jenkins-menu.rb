cask :v1 => 'jenkins-menu' do
  version '0.1.1'
  sha256 'c53e72473ff1d64b0b63b28ebd6297553cd6045c383b48e15887041487b588fb'

  url "https://bitbucket.org/qvacua/qvacua/downloads/JenkinsMenu-#{version}.zip"
  appcast 'http://qvacua.com/jenkinsmenu/appcast.xml',
          :sha256 => '420aaafc9de36c174ba1b43d1dfd4719603808f1754da8b7bb2a4ef1e934429d'
  homepage 'http://qvacua.com'
  license :oss

  app 'Jenkins Menu.app'
end
