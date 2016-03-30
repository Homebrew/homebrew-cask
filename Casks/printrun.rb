cask 'printrun' do
  version '1.3'
  sha256 '707a3c985f32ec156b4dc85dae3d3434a3a052bbf239d768423d94c1b7f86998'

  # kapsi.fi is the official download host per the vendor homepage
  url 'http://koti.kapsi.fi/~kliment/printrun/Printrun-Mac-03Feb2015.zip'
  name 'Printrun'
  homepage 'https://github.com/kliment/Printrun'
  license :gpl

  app 'Printrun-Mac-03Feb2015.app'
end
