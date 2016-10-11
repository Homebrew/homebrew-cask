cask 'dbeaver-community' do
  version '3.7.6'
  sha256 '25f3508e47b77f039d89de090112908c1e50760885db307d9b930e1a94bb5d55'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'Dbeaver.app'
end
