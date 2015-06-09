cask :v1 => 'orange' do
  version '2.7.8-dcf9af9'
  sha256 'd5ea2f528e3115a1e9ddfdbaf57e7674249817f0dcd93e91bd55180e80727d7f'

  url "http://orange.biolab.si/download/files/Orange-#{version}.dmg"
  name 'Orange'
  homepage 'http://orange.biolab.si/'
  license :gpl

  app 'Orange.app'
end
