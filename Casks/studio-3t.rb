cask 'studio-3t' do
  version '2019.2.0'
  sha256 '30c0e1ef745f9e2c0e4a6530c6de72917a00df0bc26d6edda47d7f84ddd59187'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
