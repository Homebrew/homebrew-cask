class Hermes < Cask
  version '1.2.2'
  sha256 'f03963ce4fdb8461c269882080beebc56101158bce13e13d3f1adce8b20fd5d2'

  url "https://s3.amazonaws.com/alexcrichton-hermes/Hermes-#{version}.zip"
  appcast 'http://hermesapp.org/versions.xml'
  homepage 'http://hermesapp.org/'

  link 'Hermes.app'
end
