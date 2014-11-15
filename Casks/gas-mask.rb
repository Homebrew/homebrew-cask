cask :v1 => 'gas-mask' do
  version '0.8.1'
  sha256 'f384e973603088ed5afbe841ef7d5698262988c65a0437a9d8011dcb667fcc2e'

  url "http://gmask.clockwise.ee/files/gas_mask_#{version}.zip"
  appcast 'http://gmask.clockwise.ee/check_update/',
          :sha256 => '2e4f5292999bddfc25245a9c10f98d7ac23d0717a1dd45436a00cf09be7f8d9b'
  homepage 'http://www.clockwise.ee/gasmask/'
  license :unknown

  app 'Gas Mask.app'
end
