cask 'reunion' do
  version '12.0.0.181218'
  sha256 '6c4946169eb2f57d3726615265b29a6483ddfbccf19e610f832c5fadba8fd1e6'

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.dots_to_hyphens}.zip"
  appcast "https://store.leisterpro.com/updates/reunion#{version.major}/appcast.xml"
  name 'Reunion'
  homepage 'http://www.leisterpro.com/'

  app "Reunion #{version.major}.app"
end
