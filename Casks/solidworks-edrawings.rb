cask 'solidworks-edrawings' do
  version '2014 SP05'
  sha256 '986bbb63effd84a9e0ca4d9cb8fbe3a13ec25cfc15599e568ceb8ac531c6011f'

  # solidworks.com is the official download host per the vendor homepage
  url 'http://dl-ak.solidworks.com/nonsecure/edrawings/e2014sp05/14.5.0.0008/mac/eDrawings%202014%20SP05.dmg'
  name 'eDrawings Viewer'
  homepage 'http://www.edrawingsviewer.com/ed/edrawings-mac.htm'
  license :gratis

  app 'SolidWorks eDrawings.app'
end
