cask 'prismatik' do
  version '5.11.2'
  sha256 '47e7e5335c432cb9aec169b129b24fae7bb367665843c5cbaa0e49c6f0db13f5'

  # github.com/woodenshark/Lightpack was verified as official when first introduced to the cask
  url "https://github.com/woodenshark/Lightpack/releases/download/#{version}/Prismatik.#{version}.dmg"
  appcast 'https://github.com/woodenshark/Lightpack/releases.atom',
          checkpoint: '9643c17cba55157325ba00abd2244d07b369d848f49b32565ee11e01103bf6a5'
  name 'Prismatik'
  homepage 'https://lightpack.tv/promo/lightpack1.php'

  app 'Prismatik.app'
end
