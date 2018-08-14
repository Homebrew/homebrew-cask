cask 'muzzle' do
  version '1.3'
  sha256 'e76e5f5358e8749e7fe2294fee3717ac7327e79eff227430bf3d8f601684a0e6'

  url 'https://muzzleapp.com/binaries/muzzle.zip'
  appcast 'https://muzzleapp.com/api/1/appcast.xml'
  name 'Muzzle'
  homepage 'https://muzzleapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Muzzle.app'
end
