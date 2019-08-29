cask 'studio-3t' do
  version '2019.5.0'
  sha256 '47ac7a86253983d1092d7da8748102953c5b888fe19f25a99a2c3d2487fd372d'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
