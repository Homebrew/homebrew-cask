cask 'dbeaver-community' do
  version '4.0.0'
  sha256 'f8a9d8a580bdc233abfcbc2abede1beefcc7bcb1b4bb6801c1246d04a1170973'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'
end
