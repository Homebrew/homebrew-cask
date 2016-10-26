cask 'shimo' do
  version '4.1.4.2_8819'
  sha256 '2d2bb69c4a1732ce4a2fb05bab899d00dd98f86743e07f1fffa9a867fc836a4d'

  # shimo.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://shimo.s3.amazonaws.com/Shimo_#{version}.zip"
  name 'Shimo'
  homepage 'https://www.feingeist.io/shimo/'

  auto_updates true

  app 'Shimo.app'
end
