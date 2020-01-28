cask 'reunion' do
  version '12.0.0.200127'
  sha256 '9655c949b744ba3e1571b3de55d9a3c35a7391bd3d4a4591098a2e9812b3dd83'

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.dots_to_hyphens}.zip"
  appcast "https://store.leisterpro.com/updates/reunion#{version.major}/appcast.xml",
          configuration: version.dots_to_hyphens
  name 'Reunion'
  homepage 'https://www.leisterpro.com/'

  app "Reunion #{version.major}.app"
end
