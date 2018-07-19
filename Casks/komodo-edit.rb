cask 'komodo-edit' do
  version '11.1.0-18196'
  sha256 '6615bd11dd7fe569d171c917721e6fcff0ee83f759f49dbda3d10b16497bf00d'

  url "https://downloads.activestate.com/Komodo/releases/#{version.sub(%r{-.*}, '')}/Komodo-Edit-#{version}-macosx-x86_64.dmg"
  name 'Komodo Edit'
  homepage 'https://www.activestate.com/komodo-edit/'

  appcase "http://docs.activestate.com/komodo/#{version.major}/get/relnotes/"

  app "Komodo Edit #{version.major}.app"
end
