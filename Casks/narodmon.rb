cask :v1 => 'narodmon' do
  version '1.5.2'
  sha256 '25bdc9c9414ef2b6330553d3ad769642eee61d2dd564159663a63c96f2769d6d'

  url "https://github.com/niki-timofe/NarodMonOSX/releases/download/#{version}/NarodMon.zip"
  name 'NarodMon'
  homepage 'http://narodmon.ru/'
  license :mit

  app 'NarodMon.app'
end
