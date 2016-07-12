cask 'josm' do
  version '10526'
  sha256 'b6e1eb86af6ea953af8d50770aeea3cedfe8ef47cbea7256ff9e715a1729cb81'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de'
  license :gpl

  app 'JOSM.app'
end
