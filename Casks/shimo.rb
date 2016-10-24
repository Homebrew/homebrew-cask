cask 'shimo' do
  version '4.1.4.1_8818'
  sha256 'f8895891e901f7dbd89559203584f0ddd0879bc3d036e7518d862cdb0d1d6369'

  # shimo.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://shimo.s3.amazonaws.com/Shimo_#{version}.zip"
  name 'Shimo'
  homepage 'https://www.feingeist.io/shimo/'

  auto_updates true

  app 'Shimo.app'
end
