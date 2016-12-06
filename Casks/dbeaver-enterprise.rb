cask 'dbeaver-enterprise' do
  version '3.8.1'
  sha256 '381a708c25c8f2d1e9c092f4f4fca821e763ebc37e98a8d003f69168a1e4df6d'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'Dbeaver.app'
end
