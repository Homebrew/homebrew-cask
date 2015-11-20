cask :v1 => 'dbeaver-enterprise' do
  version '3.5.4'
  sha256 '8f52e6ed1cb4764d527c5dca6ce3d85f9680355a373582b26630bf196c8d9097'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
