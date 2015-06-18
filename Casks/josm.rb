cask :v1 => 'josm' do
  version '8339'
  sha256 '01377ed88b40f9b3724ffa1b33cbd16171a0e116f382e552c24d757e0e303021'

  url 'https://josm.openstreetmap.de/download/macosx/josm-macosx-8339.zip'
  name 'JOSM'
  homepage 'http://josm.openstreetmap.de'
  license :gpl

  app 'JOSM.app'
end
