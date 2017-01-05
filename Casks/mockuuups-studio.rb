cask 'mockuuups-studio' do
  version '1.1.0'
  sha256 '93fb62e9cce1cb7bae025df86e0130865d0ed827f36db0b353820ba622f33275'

  # mockuuups.com was verified as official when first introduced to the cask
  url "https://binaries.mockuuups.com/Mockuuups%20Studio-#{version}.dmg"
  name 'Mockuuups Studio'
  homepage 'https://mockuuups.studio/'

  app 'Mockuuups Studio.app'
end
