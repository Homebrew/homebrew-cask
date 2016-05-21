cask 'dbeaver-enterprise' do
  version '3.6.7'
  sha256 'f376a540e3ed77a1a7e28bc5c81bd2c0eb55212a3d8b28cccd22e3d900d5c9fb'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
