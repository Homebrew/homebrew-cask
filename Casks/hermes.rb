cask :v1 => 'hermes' do
  version '1.2.2'
  sha256 'f03963ce4fdb8461c269882080beebc56101158bce13e13d3f1adce8b20fd5d2'

  url "https://s3.amazonaws.com/alexcrichton-hermes/Hermes-#{version}.zip"
  appcast 'http://hermesapp.org/versions.xml',
          :sha256 => '2fddeaa4e839650ce49be65b8cac2b9fb5906f641a63b4ee7960ca0570efc79d'
  homepage 'http://hermesapp.org/'
  license :unknown    # todo: improve this machine-generated value

  app 'Hermes.app'
end
