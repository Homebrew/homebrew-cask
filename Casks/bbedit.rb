class Bbedit < Cask
  version '11.0'
  sha256 '3c15fef50245e93073e73136bb7097faf1f03a061559eed84a17cb8678fdf033'

  url "https://s3.amazonaws.com/BBSW-download/BBEdit_#{version}.dmg"
  appcast 'https://versioncheck.barebones.com/BBEdit.xml'
  homepage 'http://www.barebones.com/products/bbedit/'
  license :commercial

  app 'BBEdit.app'
end
