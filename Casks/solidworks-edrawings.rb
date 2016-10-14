cask 'solidworks-edrawings' do
  version '2015,sp02'
  sha256 '1eb3ea4021713f6f602d02e15289198f39d5a96d1b81a9b7c6377f2dc98c8cc4'

  # dl-ak.solidworks.com/nonsecure/edrawings was verified as official when first introduced to the cask
  url "http://dl-ak.solidworks.com/nonsecure/edrawings/e#{version.before_comma}#{version.after_comma}/macse/eDrawings%20#{version.before_comma}.dmg"
  name 'eDrawings Viewer'
  homepage 'http://www.edrawingsviewer.com/ed/edrawings-mac.htm'

  app 'SolidWorks eDrawings.app'
end
