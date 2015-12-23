cask 'dymo-stamps' do
  version :latest
  sha256 :no_check

  url 'http://download.endicia.com/dymostamps/dymostamps.dmg'
  name 'Dymo Stamps'
  homepage 'http://www.dymo.com/en-US/online-support'
  license :gratis

  app 'DYMO Stamps.app'

  depends_on :cask => 'dymo-label'
end
