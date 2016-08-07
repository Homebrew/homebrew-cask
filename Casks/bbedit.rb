cask 'bbedit' do
  version '11.6'
  sha256 'ba67eed37a7d712b1f408369eec1776086c87421a0e4458fc351961979ee4e46'

  url "http://pine.barebones.com/files/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml',
          checkpoint: '834b32a7873db793203a072d902b4037b99d0650739934c387953dc71f411719'
  name 'BBEdit'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'

  postflight do
    suppress_move_to_applications
  end
end
