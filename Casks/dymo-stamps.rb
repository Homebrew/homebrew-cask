cask 'dymo-stamps' do
  version :latest
  sha256 :no_check

  url 'http://download.endicia.com/dymostamps/dymostamps.dmg'
  name 'Dymo Stamps'
  homepage 'https://www.dymo.com/en-US/online-support'
  license :gratis

  depends_on cask: 'dymo-label'

  app 'DYMO Stamps.app'
end
