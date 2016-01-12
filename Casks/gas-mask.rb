cask 'gas-mask' do
  version '0.8.3'
  sha256 '907aa5979d1a902fa2582f5b6a4f2b1087e5f4e60cc9eb87594407d60fcd2d53'

  url "http://gmask.clockwise.ee/files/gas_mask_#{version}.zip"
  appcast 'http://gmask.clockwise.ee/check_update/',
          :sha256 => '6dfa3c1ee1ffbb8c0e62e1dd27684644608911147119857f3cfec55dc55df5db'
  name 'Gas Mask'
  homepage 'http://www.clockwise.ee/'
  license :gpl

  app 'Gas Mask.app'
end
