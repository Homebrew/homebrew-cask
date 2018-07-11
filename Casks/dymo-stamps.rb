cask 'dymo-stamps' do
  version :latest
  sha256 :no_check

  url 'http://download.endicia.com/dymostamps/dymostamps.dmg'
  name 'Dymo Stamps'
  homepage 'http://mac.endicia.com/stamps/'

  depends_on cask: 'dymo-label'

  app 'DYMO Stamps.app'
end
