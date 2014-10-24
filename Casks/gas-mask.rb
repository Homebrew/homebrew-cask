class GasMask < Cask
  version '0.8'
  sha256 '16353247ea14da7675578fda340005645c4610a478a748c1ed410296c3dab52a'

  url "http://gmask.clockwise.ee/files/gas_mask_#{version}.zip"
  appcast 'http://gmask.clockwise.ee/check_update/',
          :sha256 => '3a711b4c1d8014e2495a195f5e7557abf8fb905c3f0cfcea889a5820cba33080'
  homepage 'http://www.clockwise.ee/gasmask/'
  license :unknown

  app 'Gas Mask.app'
end
