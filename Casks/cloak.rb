cask :v1 => 'cloak' do
  version '2.0.10'
  sha256 '617ff2a01994225a515e283348921e2eb438ba81e3e28d7ab2ffb273158ad29c'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/static.getcloak.com/osx/updates/Release/Cloak-#{version}.dmg"
  name 'Cloak'
  homepage 'https://www.getcloak.com'
  license :gratis

  app 'Cloak.app'
end
