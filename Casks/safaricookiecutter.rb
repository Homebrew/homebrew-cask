cask 'safaricookiecutter' do
  version '1.4'
  sha256 '390db3c6166ab02e9e7d0dbd8637e9242f4a0011e98e5a5038e9de16bbc8c8d9'

  url "http://seiryu.home.comcast.net/~seiryu/software/SafariCookieCutter#{version}.dmg"
  name 'SafariCookieCutter'
  homepage 'http://seiryu.home.comcast.net/~seiryu/scc.html'

  app 'SafariCookieCutter.app'
end
