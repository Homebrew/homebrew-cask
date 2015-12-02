cask :v1 => 'dbeaver-community' do
  version '3.5.5'
  sha256 'bd7b43a2e124a376cc7435dac02d1854ba600f1e661de2eab42acf47fed42e3d'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
