cask 'printrun' do
  version '03Feb2015'
  sha256 '707a3c985f32ec156b4dc85dae3d3434a3a052bbf239d768423d94c1b7f86998'

  # koti.kapsi.fi/~kliment/printrun was verified as official when first introduced to the cask
  url "http://koti.kapsi.fi/~kliment/printrun/Printrun-Mac-#{version}.zip"
  name 'Printrun'
  homepage 'https://github.com/kliment/Printrun'

  app "Printrun-Mac-#{version}.app"
end
