cask 'gas-mask' do
  version '0.8.3'
  sha256 '907aa5979d1a902fa2582f5b6a4f2b1087e5f4e60cc9eb87594407d60fcd2d53'

  url "http://gmask.clockwise.ee/files/gas_mask_#{version}.zip"
  appcast 'http://gmask.clockwise.ee/check_update/',
          :sha256 => '10e2f577b32aca6867982f3907803067452fef40aed44bcfee42de4e65b4dfd9'
  name 'Gas Mask'
  homepage 'http://www.clockwise.ee/'
  license :gpl

  app 'Gas Mask.app'
end
