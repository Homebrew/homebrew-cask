cask 'studio-3t' do
  version '5.6.1'
  sha256 '8de6578e8c130d9ef8f06b151f1ea9cab69b3f43319fdb1a74e69919c7b4c090'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'http://files.studio3t.com/changelog/changelog.txt',
          checkpoint: 'bdf23d7f5edd55867999b553b5f42fceec4bd21d86b4aeb1e74d0ff26aa024f4'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
