cask 'studio-3t' do
  version '2020.6.0'
  sha256 '00bd75db9e0c34d4852735fa5f89f48b62609da2759ef0c5b2fe306a9e8dcda0'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
