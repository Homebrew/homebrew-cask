cask 'dbeaver-community' do
  version '3.8.4'
  sha256 '134377b618cd782aa9ba86cd97c47f99f4da6739a6f27e1e4ec1b526fe21a984'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'
end
