cask 'studio-3t' do
  version '2019.2.1'
  sha256 '73745d76f15bff326f763e94098cdceb5fc5f200f1e3dbd62bed4ca3eee0da63'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'https://files.studio3t.com/changelog/changelog.txt'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  auto_updates true

  app 'Studio 3T.app'
end
