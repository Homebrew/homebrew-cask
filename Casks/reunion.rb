cask 'reunion' do
  version '12.0.0.200421'
  sha256 'fd3124f41a71ea853fef079784cce8db07a06261367630eb0763064f1ab5395a'

  url "https://store.leisterpro.com/updates/reunion#{version.major}/Reunion-#{version.dots_to_hyphens}.zip"
  appcast "https://store.leisterpro.com/updates/reunion#{version.major}/appcast.xml",
          configuration: version.dots_to_hyphens
  name 'Reunion'
  homepage 'https://www.leisterpro.com/'

  app "Reunion #{version.major}.app"
end
