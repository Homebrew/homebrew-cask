cask 'relaunch64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '3.3.7'
  sha256 '0fdd2802f8b85ab3b1ec03cb5a22ba20e94a89f4ee6edd974ab818490dd686dc'

  # github.com/sjPlot/Relaunch64 was verified as official when first introduced to the cask
  url "https://github.com/sjPlot/Relaunch64/releases/download/#{version}/Relaunch64_#{version}_OS_X_app.zip"
  appcast 'https://github.com/sjPlot/Relaunch64/releases.atom',
          checkpoint: '03fbaeed64c544d89a6d46961a87ddf986f97cf47165dc39f6e4f81228b11398'
  name 'Relaunch64'
  homepage 'http://www.popelganda.de/relaunch64.html'

  app 'Relaunch64.app'
end
