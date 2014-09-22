class JenkinsMenu < Cask
  version '0.1.1'
  sha256 'c53e72473ff1d64b0b63b28ebd6297553cd6045c383b48e15887041487b588fb'

  url 'https://bitbucket.org/qvacua/qvacua/downloads/JenkinsMenu-0.1.1.zip'
  appcast 'http://qvacua.com/jenkinsmenu/appcast.xml'
  homepage 'http://qvacua.com'

  app 'Jenkins Menu.app'
end
