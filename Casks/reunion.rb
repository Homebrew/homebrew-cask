cask 'reunion' do
  version '12.0.0.191105'
  sha256 '54c6dca89e32cf80c3751cb2d516a6ed5ed3cdc249c2c0cbec8b7e041797e918'

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.dots_to_hyphens}.zip"
  appcast "https://store.leisterpro.com/updates/reunion#{version.major}/appcast.xml",
          configuration: version.dots_to_hyphens
  name 'Reunion'
  homepage 'https://www.leisterpro.com/'

  app "Reunion #{version.major}.app"
end
