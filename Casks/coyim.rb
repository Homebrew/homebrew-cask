cask 'coyim' do
  version '0.3.8'
  sha256 '1238d6d67087c38a003eafa54286b492342e2f62ddcb0d4a0fcacde07591fdf1'

  # bintray.com/twstrike/coyim was verified as official when first introduced to the cask
  url "https://dl.bintray.com/twstrike/coyim/v#{version}/mac-bundle/coyim.dmg"
  name 'CoyIM'
  homepage 'https://coy.im/'

  app 'CoyIM.app'
end
