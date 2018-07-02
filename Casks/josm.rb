cask 'josm' do
  version '13996'
  sha256 'de7f24bb69b81217be738c15d03e501a0adc6941afdaa4b606c989882fd37c12'

  url "https://josm.openstreetmap.de/download/macosx/josm-macosx-#{version}.zip"
  name 'JOSM'
  homepage 'https://josm.openstreetmap.de/'

  app 'JOSM.app'
end
