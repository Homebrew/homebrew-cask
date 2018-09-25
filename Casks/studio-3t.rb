cask 'studio-3t' do
  version '2018.4.4'
  sha256 'ebf7baceb8a7f4480741e39a24dd3c719955088d00be8ffe117763d099ad4076'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
