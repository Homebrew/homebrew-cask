cask 'studio-3t' do
  version '2019.3.0'
  sha256 '1ec8e8da98e32f645441a79a75d9543339886981e9106ca29c455bca7356d24f'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
