cask 'studio-3t' do
  version '5.6.3'
  sha256 '46e944f9800f5a8a47efc8adb3f14de6619abf07aabb495c8489a509b7736b62'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'http://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '038f68111ad92ade55341348e691ef5515fac96e6730768455835e1b83da5af1'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
