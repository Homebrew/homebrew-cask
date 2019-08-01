cask 'studio-3t' do
  version '2019.4.0'
  sha256 'f3a76303958ce59c9f3101804d5112cbd9c23f7d3ef3328984071ece93a530cf'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
