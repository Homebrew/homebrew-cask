cask 'studio-3t' do
  version '2019.4.1'
  sha256 'ed7b326120f8c072de2068680e565468f4027ce343713602c154e8a5701fdeeb'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
