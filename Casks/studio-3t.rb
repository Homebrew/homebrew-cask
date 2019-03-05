cask 'studio-3t' do
  version '2019.1.0'
  sha256 'a5ad2439faf84f466bda1f86b366528d90621b9d5fdb16db6f0acd3b3697dfeb'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
