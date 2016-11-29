cask 'mockuuups-studio' do
  version '1.0.1'
  sha256 'ecefe1009ed42375db4df1c76a52f7f4e18378acbd6932e9df8e4a2e1b387ff1'

  # mockuuups.com was verified as official when first introduced to the cask
  url "https://binaries.mockuuups.com/Mockuuups%20Studio-#{version}.dmg"
  name 'Mockuuups Studio'
  homepage 'https://mockuuups.studio/'

  app 'Mockuuups Studio.app'
end
