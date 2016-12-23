cask 'ghostlab' do
  version '2.1.3'
  sha256 '4b2fd3afcee9c77688319c1f75ab1df05a1272c35312c25d0df1f162ff976d6b'

  url "https://awesome.vanamco.com/Ghostlab#{version.major}/downloads/Ghostlab#{version.major}.dmg"
  appcast "https://awesome.vanamco.com/Ghostlab2/update/ghostlab#{version.major}-cast.xml?vco=trkd",
          checkpoint: 'dc2804d9dea4e004b1a62fc20252b78c9962f14377a2ff1744fbc43477106034'
  name 'Ghostlab'
  homepage 'https://www.vanamco.com/ghostlab/'

  app "Ghostlab#{version.major}.app"
end
