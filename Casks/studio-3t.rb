cask 'studio-3t' do
  version '2020.3.0'
  sha256 '98c36d0d297667a55e33fb048f49fef5b480b3168e5cea69534ee78c444e0b0d'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
