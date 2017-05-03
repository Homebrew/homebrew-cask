cask 'josm' do
  version '12039'
  sha256 'bf4cfef7dcbf708eb12f0a723fbc5ec4d1e52772fe7927562d5cac29bbbef9f6'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
