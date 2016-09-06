cask 'dbeaver-enterprise' do
  version '3.7.3'
  sha256 '171f9ca1883c2159c0cab20077a60dc5a0778535490d6b06de1477f442f9943f'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
