cask 'relaunch64' do
  # note: "64" is not a version number, but an intrinsic part of the product name
  version '3.3.3'
  sha256 '7476d2fc15f8e5d6db68d21614f9d0f784af9e67d2456e7ae2a98cf145441ac8'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/relaunch64/Relaunch64_#{version}_OS_X_app.zip"
  name 'Relaunch64'
  homepage 'http://www.popelganda.de/relaunch64.html'
  license :gpl

  depends_on arch: :x86_64

  app 'Relaunch64.app'
end
