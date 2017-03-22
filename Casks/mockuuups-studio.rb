cask 'mockuuups-studio' do
  version '1.1.2'
  sha256 'b030a95b698942967f83f6e83fb4aaa1514c6f96004228af28a23f7b8b27b315'

  # mockuuups.com was verified as official when first introduced to the cask
  url "https://binaries.mockuuups.com/Mockuuups%20Studio-#{version}.dmg"
  name 'Mockuuups Studio'
  homepage 'https://mockuuups.studio/'

  app 'Mockuuups Studio.app'
end
