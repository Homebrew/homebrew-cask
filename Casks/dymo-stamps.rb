cask 'dymo-stamps' do
  version :latest
  sha256 :no_check

  # endicia.com/dymostamps was verified as official when first introduced to the cask
  url 'http://download.endicia.com/dymostamps/dymostamps.dmg'
  name 'Dymo Stamps'
  homepage 'https://www.dymo.com/en-US/online-support'

  depends_on cask: 'dymo-label'

  app 'DYMO Stamps.app'
end
