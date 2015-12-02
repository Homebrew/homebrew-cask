cask :v1 => 'dbeaver-enterprise' do
  version '3.5.5'
  sha256 '6abc6af730cbe3701eb9c0b807df2187b4bea8471a622e96f5958d4c2b3cb736'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
