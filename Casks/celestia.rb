cask 'celestia' do
  version '1.6.1'
  sha256 'downloadnotworking'

  url "https://celestia.space/files/celestia/#{version}/celestia-osx-#{version}.dmg"
  appcast 'https://github.com/CelestiaProject/Celestia/releases.atom'
  name 'Celestia'
  homepage 'https://celestia.space/'

  app 'Celestia.app'
end
