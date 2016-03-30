cask 'dbeaver-enterprise' do
  version '3.6.0'
  sha256 'c358a1f7d92142843e9fed10ea49050243b5ce024490bebbb72f160d43b6549c'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
