cask 'gas-mask' do
  version '0.8.3'
  sha256 '907aa5979d1a902fa2582f5b6a4f2b1087e5f4e60cc9eb87594407d60fcd2d53'

  url "http://gmask.clockwise.ee/files/gas_mask_#{version}.zip"
  appcast 'http://gmask.clockwise.ee/check_update/',
          checkpoint: '1521f159563375d5f66bc2ad30e5818df91625bbda3f1460a0a81670ee0f5c2a'
  name 'Gas Mask'
  homepage 'http://www.clockwise.ee/'
  license :gpl

  app 'Gas Mask.app'
end
