cask 'josm' do
  version '10786'
  sha256 '38fa7a297b8e0bec531f02b9a8dfda8ee0d1af37efcec4a88dbf655834e0d62c'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de'
  license :gpl

  app 'JOSM.app'
end
