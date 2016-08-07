cask 'houdahspot' do
  version '4.2.2'
  sha256 '609e002a403b6d561e883d7901cfc585d7845ac46419faa04bcce7590a53b0d3'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: '58dd82d6c9de805828c06f22655e4ea2b8bdebddc33174a70b9e6ddfd5284bbd'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'
  license :commercial

  app 'HoudahSpot.app'

  postflight do
    suppress_move_to_applications
  end
end
