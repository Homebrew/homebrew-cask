cask 'protant' do
  version '1.0.0'
  sha256 '98906ca80b98ce8fc7ec11eea6bba29f629a072752bb1c2f9ba07a1355effee1'

  url "http://www.laurenceanthony.net/software/protant/releases/ProtAnt#{version.delete('.')}/ProtAnt.zip"
  name 'ProtAnt'
  homepage 'http://www.laurenceanthony.net/software/protant'
  license :gratis

  app 'ProtAnt.app'
end
