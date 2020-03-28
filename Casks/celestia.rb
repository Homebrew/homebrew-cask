cask 'celestia' do
  version '1.6.1'
  sha256 '80f12a85b63b6b45640d1165d06861a84fe11efe4a564e0a755cc313d84cdfb4'

  url "https://celestia.space/files/celestia/#{version}/celestia-osx-#{version}.dmg"
  appcast 'https://github.com/CelestiaProject/Celestia/releases.atom'
  name 'Celestia'
  homepage 'https://celestia.space/'

  app 'Celestia.app'
end
