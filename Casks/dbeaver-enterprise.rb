cask 'dbeaver-enterprise' do
  version '3.7.1'
  sha256 'd3f5022d223ca212341cba2b4513b5089498c177ece38ac4ac85da8ffc1ec122'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
