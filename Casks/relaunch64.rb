cask 'relaunch64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '3.3.6'
  sha256 '6da269fa3f76bbd7cff512c253a1f6e23ef9ae25660a4f5858a9d0eeb7802b86'

  # github.com/sjPlot/Relaunch64 was verified as official when first introduced to the cask
  url "https://github.com/sjPlot/Relaunch64/releases/download/#{version}/Relaunch64_#{version}_OS_X_app.zip"
  appcast 'https://github.com/sjPlot/Relaunch64/releases.atom',
          checkpoint: '40fe263f6ed697443c0e4bc2c8e0ab396ec10bced068e2f93be5dd1f95eaef47'
  name 'Relaunch64'
  homepage 'http://www.popelganda.de/relaunch64.html'

  depends_on arch: :x86_64

  app 'Relaunch64.app'
end
