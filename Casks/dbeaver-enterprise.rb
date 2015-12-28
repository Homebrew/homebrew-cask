cask 'dbeaver-enterprise' do
  version '3.5.6'
  sha256 '94af6166cc8624ca2e099a9382025340db25069d97f5dd023a036b3af75a9817'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
