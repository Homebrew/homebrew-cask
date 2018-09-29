cask 'studio-3t' do
  version '2018.4.5'
  sha256 'eb8ea302d4dc587aa51eed6d2ced67155fbe997146616c13c9239c160dae869b'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
