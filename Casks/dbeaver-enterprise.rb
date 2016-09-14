cask 'dbeaver-enterprise' do
  version '3.7.4'
  sha256 '98bdefcfcd6ebcad84c3cd20f3d57cd3e508b6dad4e9769c0cd5af1ad6bfd2da'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
