cask 'safaricookiecutter' do
  version '1.4'
  sha256 '390db3c6166ab02e9e7d0dbd8637e9242f4a0011e98e5a5038e9de16bbc8c8d9'

  url "https://github.com/nickzman/safaricookiecutter/releases/download/v#{version}/SafariCookieCutter#{version}.dmg"
  appcast 'https://github.com/nickzman/safaricookiecutter/releases.atom'
  name 'SafariCookieCutter'
  homepage 'https://github.com/nickzman/safaricookiecutter'

  app 'SafariCookieCutter.app'
end
