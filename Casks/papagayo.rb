cask 'papagayo' do
  version '2.0b1'
  sha256 'a5a29826d4bf343e306b8bda7bfff8f0269c367a0cd037b8896ec596b7a850b1'

  url "http://www.lostmarble.com/downloads/Papagayo_Mac_#{version}.dmg"
  name 'Papagayo'
  homepage 'http://www.lostmarble.com/papagayo/'

  app 'Papagayo/Papagayo.app'
end
