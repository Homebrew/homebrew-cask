cask 'dbeaver-enterprise' do
  version '3.8.4'
  sha256 '8d53b6473f821da6322cd2afcabad3df0ab97a31cf69577e10fadf7fdcd3528f'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'http://dbeaver.jkiss.org/files/',
          checkpoint: '948e7d37f5184a5d5c2d5800baf2a63c83745cefc7d0b4022dad3ebeb3a74171'
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'Dbeaver.app'
end
