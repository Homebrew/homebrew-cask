cask 'printrun' do
  version '03Feb2015'
  sha256 '707a3c985f32ec156b4dc85dae3d3434a3a052bbf239d768423d94c1b7f86998'

  # koti.kapsi.fi/~kliment/printrun was verified as official when first introduced to the cask
  url "http://koti.kapsi.fi/~kliment/printrun/Printrun-Mac-#{version}.zip"
  appcast 'http://koti.kapsi.fi/~kliment/printrun/',
          checkpoint: 'bfbdb42c2e55b3903a785df3a16b62bf8a506c5ce690a5305f66b4f89b5161b9'
  name 'Printrun'
  homepage 'https://github.com/kliment/Printrun'

  app "Printrun-Mac-#{version}.app"
end
