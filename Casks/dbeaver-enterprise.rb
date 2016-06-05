cask 'dbeaver-enterprise' do
  version '3.6.9'
  sha256 'a4500ee5e0301d87474e6073cfca33317a1b1a23254a73700d0f0b8ed61016b2'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
