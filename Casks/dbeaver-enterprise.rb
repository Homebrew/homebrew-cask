cask 'dbeaver-enterprise' do
  version '3.6.10'
  sha256 '5c19c5f38a7dd8575a6fc3a4d97c2df80e305338057e2e870d2527c3a46ebe40'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
