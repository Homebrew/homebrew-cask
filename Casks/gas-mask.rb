cask 'gas-mask' do
  version '0.8.5'
  sha256 '23dba9a90432e060c144e9e35077a7dbd4b3bf1a9848807461dad9d8d8f3ae83'

  url "http://gmask.clockwise.ee/files/gas_mask_#{version}.zip"
  appcast 'http://gmask.clockwise.ee/check_update/',
          checkpoint: '257f5e44affa2eabe7e530f40ae8f7238e472dfe1da0f94c588dbb5a35a879ab'
  name 'Gas Mask'
  homepage 'http://clockwise.ee/'

  app 'Gas Mask.app'
end
