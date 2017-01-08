cask 'safaricookiecutter' do
  version '1.4'
  sha256 '390db3c6166ab02e9e7d0dbd8637e9242f4a0011e98e5a5038e9de16bbc8c8d9'

  url "https://github.com/nickzman/safaricookiecutter/releases/download/v#{version}/SafariCookieCutter#{version}.dmg"
  appcast 'https://github.com/nickzman/safaricookiecutter/releases.atom',
          checkpoint: 'd0b54d55434361940464c9036b0294262376eae7096c9f0e3a0296bdeb600207'
  name 'SafariCookieCutter'
  homepage 'https://github.com/nickzman/safaricookiecutter'

  app 'SafariCookieCutter.app'
end
