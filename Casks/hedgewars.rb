cask 'hedgewars' do
  if MacOS.version <= :el_capitan
    version '0.9.22'
    sha256 'adc0b6dd3b47de115e85db1cb72841836444c0ebc77caee8139bfd6561e28fe8'
  else
    version '0.9.23'
    sha256 '2a5fbfa005ec6aeea172270397025c17a2c117224dd21db5214b8cbbeade411b'
  end

  url "https://www.hedgewars.org/download/releases/Hedgewars-#{version}.dmg"
  appcast 'https://www.hedgewars.org/download/appcast.xml'
  name 'Hedgewars'
  homepage 'https://hedgewars.org/'

  app 'Hedgewars.app'
end
