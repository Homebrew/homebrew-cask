cask 'iriunwebcam' do
  version '2.3.3'
  sha256 '6bc44b7f054042ade322de0d4aa4628d2112509ce3c87307294def474a9c871c'

  # 1758658189.rsc.cdn77.org/ was verified as official when first introduced to the cask
  url "https://1758658189.rsc.cdn77.org/IriunWebcam-#{version}.pkg"
  appcast 'https://iriun.com/'
  name 'Iriun'
  homepage 'https://iriun.com/'

  pkg "IriunWebcam-#{version}.pkg"

  uninstall quit:      'com.iriun.webcam',
            pkgutil:   'com.iriun.*',
            launchctl: 'com.iriun.cmio.DPA.camera'
end
