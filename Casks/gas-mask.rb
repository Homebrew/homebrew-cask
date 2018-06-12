cask 'gas-mask' do
  version '0.8.5'
  sha256 '23dba9a90432e060c144e9e35077a7dbd4b3bf1a9848807461dad9d8d8f3ae83'

  url "http://gmask.clockwise.ee/files/gas_mask_#{version}.zip"
  appcast 'http://gmask.clockwise.ee/check_update/'
  name 'Gas Mask'
  homepage 'http://clockwise.ee/'

  app 'Gas Mask.app'
end
