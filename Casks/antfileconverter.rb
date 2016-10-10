cask 'antfileconverter' do
  version '1.2.0'
  sha256 '97080a3932ca46f604506da21fa7c0b4e6b1e1aaa1a02f926eb6bc9cc21b841c'

  url "http://www.laurenceanthony.net/software/antfileconverter/releases/AntFileConverter#{version.no_dots}/AntFileConverter.zip"
  name 'AntFileConverter'
  homepage 'http://www.laurenceanthony.net/software/antfileconverter/'

  app 'AntFileConverter.app'
end
