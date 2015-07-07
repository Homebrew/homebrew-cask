cask :v1 => 'relaunch64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '3.3.2'
  sha256 'e45c6c06caa20eefcb1d1c1f1a77135ab7a4eb183792eb6808d7f6c3de4fcca9'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/relaunch64/Relaunch64_#{version}_OS_X_app.zip"
  name 'Relaunch64'
  homepage 'http://www.popelganda.de/relaunch64.html'
  license :gpl

  depends_on :arch => :x86_64

  app 'Relaunch64.app'
end
