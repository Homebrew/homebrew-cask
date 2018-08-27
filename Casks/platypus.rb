cask 'platypus' do
  version '5.2'
  sha256 '09d6511a62a6965b0d69c7e92455ead70853c299bf1649ea52ba00e528cb34f4'

  url "https://sveinbjorn.org/files/software/platypus/platypus#{version}.zip"
  appcast 'https://www.sveinbjorn.org/files/appcasts/PlatypusAppcast.xml'
  name 'Platypus'
  homepage 'https://sveinbjorn.org/platypus'

  auto_updates true

  app "Platypus-#{version}/Platypus.app"
end
