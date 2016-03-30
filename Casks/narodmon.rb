cask 'narodmon' do
  version '1.5.2'
  sha256 '25bdc9c9414ef2b6330553d3ad769642eee61d2dd564159663a63c96f2769d6d'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/niki-timofe/NarodMonOSX/releases/download/#{version}/NarodMon.zip"
  appcast 'https://github.com/niki-timofe/NarodMonOSX/releases.atom',
          checkpoint: 'cf50ae01f26bbe62dec5bb0391504c816fd45639402a0319a28d9f4dc7023183'
  name 'NarodMon'
  homepage 'http://narodmon.ru/'
  license :mit

  app 'NarodMon.app'
end
