cask 'studio-3t' do
  version '2018.4.2'
  sha256 'a4c157d002417f5b3170dc700cf8829113e7f230c2965a113970d7122642c410'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
