cask :v1 => 'antfileconverter' do
  version '1.2.0'
  sha256 '97080a3932ca46f604506da21fa7c0b4e6b1e1aaa1a02f926eb6bc9cc21b841c'

  url "http://www.laurenceanthony.net/software/antfileconverter/releases/AntFileConverter#{version.delete('.')}/AntFileConverter.zip"
  name 'AntFileConverter'
  homepage 'http://www.laurenceanthony.net/software/antfileconverter/'
  license :gratis

  app 'AntFileConverter.app'
end
