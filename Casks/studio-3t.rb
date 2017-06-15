cask 'studio-3t' do
  version '5.3.2'
  sha256 '19f43b4dd04e077d600c53508cce75d6217a2d57fd742c22a3f0cecd514e5ebb'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'http://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '19104d0f3d9e42de6c08f51f8a045ed3934d7026f6944a238d922002db62f7e5'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
