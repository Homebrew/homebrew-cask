cask 'iboostup' do
  version '5.1'
  sha256 '9260be9fe997c20603b301b2af71a07c5999d8418edddb7ded5a0612cea80b24'

  url 'https://www.iboostup.com/iboostup.dmg'
  appcast 'https://www.iboostup.com/updates',
          checkpoint: '0f32093b8093186ae4eab946fe848f90dae4bf2d96cabd0e5d674e20521c24b2'
  name 'iBoostUp'
  homepage 'https://www.iboostup.com/'
  license :freemium

  app 'iBoostUp.app'
end
