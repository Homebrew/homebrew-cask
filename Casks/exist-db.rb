cask 'exist-db' do
  version '2.2'
  sha256 '6f757b20263365faff23a00e80a903638d5798566109071e8536105f3d440c78'

  # bintray.com/artifact/download/existdb was verified as official when first introduced to the cask
  url "https://bintray.com/artifact/download/existdb/releases/eXist-db-#{version}.dmg"
  name 'eXist-db'
  homepage 'http://exist-db.org/'
  license :gpl

  app 'eXist-db.app'
end
