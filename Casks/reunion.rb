cask 'reunion' do
  version '12.0.0.200602'
  sha256 '5ec2e7eb77df874ba889dadd1fa7cbff898708f02a862ed726a605ace69c9dab'

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.dots_to_hyphens}.zip"
  appcast "https://store.leisterpro.com/updates/reunion#{version.major}/appcast.xml",
          configuration: version.dots_to_hyphens
  name 'Reunion'
  homepage 'https://www.leisterpro.com/'

  app "Reunion #{version.major}.app"
end
