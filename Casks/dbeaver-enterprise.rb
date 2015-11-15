cask :v1 => 'dbeaver-enterprise' do
  version '3.5.3'
  sha256 'a0ef41d9aca53ecd43f8ccd41dcb2d57391ea422429523fdab00ec69fb341fc4'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
