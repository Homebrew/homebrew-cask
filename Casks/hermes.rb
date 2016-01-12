cask 'hermes' do
  version '1.2.6'
  sha256 '3735d1bbae0e3ef773e0a2d169ca7f838f3e3510fe7b6fa59546c01fccbb9aa8'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/hermesmacapp/Hermes-#{version}.zip"
  appcast 'https://hermesapp.org/versions.xml',
          :sha256 => 'f49abc9c6df278e3effae34ce56a97c11f97337f974401aede9c3519dcb9f280'
  name 'Hermes'
  homepage 'https://hermesapp.org/'
  license :mit

  app 'Hermes.app'
end
