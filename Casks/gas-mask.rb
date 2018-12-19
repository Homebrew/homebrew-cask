cask 'gas-mask' do
  version '0.8.6'
  sha256 '9f75d0b11340d70832f87011c3d8ed97b9b18b3a56dec5f860d4040bb7404500'

  url "http://gmask.clockwise.ee/files/gas_mask_#{version}.zip"
  appcast 'http://gmask.clockwise.ee/check_update/'
  name 'Gas Mask'
  homepage 'http://clockwise.ee/'

  auto_updates true

  app 'Gas Mask.app'
end
