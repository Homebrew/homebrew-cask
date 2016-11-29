cask 'gas-mask' do
  version '0.8.4'
  sha256 '2ad7dbb866f42a6adbda84ae454cefceab0df163602927e9936f26deb300b434'

  url "http://gmask.clockwise.ee/files/gas_mask_#{version}.zip"
  appcast 'http://gmask.clockwise.ee/check_update/',
          checkpoint: '45971ba5209d41a4b67875dc31f487be0d1ac11af7f7e75e082dfb8681a7d785'
  name 'Gas Mask'
  homepage 'http://clockwise.ee/'

  app 'Gas Mask.app'
end
