cask 'shimo' do
  version '4.1.4_8814'
  sha256 'd0cc5749a0a68dcddba6ed4fbf68a4d0f40468bc50cfc57c2d3e5fbc6524c776'

  # shimo.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://shimo.s3.amazonaws.com/Shimo_#{version}.zip"
  name 'Shimo'
  homepage 'https://www.feingeist.io/shimo/'

  auto_updates true

  app 'Shimo.app'
end
