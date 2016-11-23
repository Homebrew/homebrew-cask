cask 'mockuuups-studio' do
  version '1.0.0'
  sha256 '1ad632921da0ea2a0443bd8a34aa9ad53b36f8b324303a9971ea3be84bbda1b4'

  # mockuuups.com was verified as official when first introduced to the cask
  url "https://binaries.mockuuups.com/Mockuuups%20Studio-#{version}.dmg"
  name 'Mockuuups Studio'
  homepage 'https://mockuuups.studio/'

  app 'Mockuuups Studio.app'
end
