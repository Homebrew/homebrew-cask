cask 'mountain-duck' do
  version '1.5.4.4763'
  sha256 '199330fe1d95b4f4afa84fcf9538b8cd344f4c0bb14bcb8e2af9265042dea74d'

  url "https://dist.mountainduck.io/Mountain%20Duck-#{version}.zip"
  appcast 'https://version.mountainduck.io/changelog.rss',
          checkpoint: '94c43dec7779e0ed2be6356e2eccd812fdb120dcc433eeddbf4611f8048bc2c7'
  name 'Mountain Duck'
  homepage 'https://mountainduck.io/'
  license :commercial

  app 'Mountain Duck.app'
end
