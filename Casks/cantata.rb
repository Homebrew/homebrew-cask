cask 'cantata' do
  version '2.1.0'
  sha256 '3b7c790e3fce64c91a898324e1204c785a516be80def4b2e189ec794f03ba25a'

  url "https://github.com/CDrummond/cantata/releases/download/v#{version}/Cantata-#{version}.dmg"
  appcast 'https://github.com/CDrummond/cantata/releases.atom',
          checkpoint: '9b8bedfff18435b3fa30fe7813adfcaa5460daaaa1e42dbb756bd798fdd6644d'
  name 'Cantata'
  homepage 'https://github.com/cdrummond/cantata'

  app 'Cantata.app'
end
