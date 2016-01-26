cask 'dbeaver-enterprise' do
  version '3.5.8'
  sha256 '08a8a2d419c2a6403fe485c43054d9aafd4c983d67a7029eb7d78bb7ec8c6ed6'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
