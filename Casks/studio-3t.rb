cask 'studio-3t' do
  version '2018.5.1'
  sha256 'e1bc26a9c8cdea792c67b84b7712b4dbd794649b1f7baf3135cc2e101e9b19a4'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
