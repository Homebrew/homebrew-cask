cask 'antpconc' do
  version '1.2.0'
  sha256 'f36adc0b2d36c18c3415fefb6e0b58b669caac7938e0d75ec934ae83941c3b44'

  url "http://www.laurenceanthony.net/software/antpconc/releases/AntPConc#{version.no_dots}/AntPConc.zip"
  appcast 'http://www.laurenceanthony.net/software/antpconc/releases/',
          checkpoint: 'd7ddfaf52e277ab475b7fc3e9f3ba76c1dfd3a3021de2976f209a1565b284d62'
  name 'AntPConc'
  homepage 'http://www.laurenceanthony.net/software/antpconc/'

  app 'AntPConc.app'
end
