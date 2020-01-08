cask 'studio-3t' do
  version '2020.1.0'
  sha256 '9d0b3bb7d4b977a0303e01299dd18efd1a429cca9277073804de71eb6749c5d7'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
