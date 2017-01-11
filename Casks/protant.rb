cask 'protant' do
  version '1.2.0'
  sha256 'db0a3b6af8034d622009fbfd0b44913c242d6e962a439610af3e0c4b64003272'

  url "http://www.laurenceanthony.net/software/protant/releases/ProtAnt#{version.no_dots}/ProtAnt.zip"
  name 'ProtAnt'
  homepage 'http://www.laurenceanthony.net/software/protant/'

  app 'ProtAnt.app'
end
