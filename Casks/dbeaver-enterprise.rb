cask 'dbeaver-enterprise' do
  version '3.7.2'
  sha256 'd39533d18443a193a83c830b903b367f38493b6ffb3d0a434d27a97b1c62390c'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
