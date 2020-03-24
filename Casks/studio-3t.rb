cask 'studio-3t' do
  version '2020.3.1'
  sha256 '7ef08f40592bd0194cd4c78d87f9a2bc31f63d64525e97c7f55d5320c8c8c418'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
