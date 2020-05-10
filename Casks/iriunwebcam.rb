cask 'iriunwebcam' do
  version '2.3.2'
  sha256 '03b9f69dfc1a09ee7a1be88c8f4041507491df8c2f52bea77506e7ff8e62c63e'

  # 1758658189.rsc.cdn77.org was verified as official when first introduced to the cask
  url "https://1758658189.rsc.cdn77.org/IriunWebcam-#{version}.pkg"
  appcast 'https://iriun.com/'
  name 'Iriun'
  homepage 'https://iriun.com/'

  pkg "IriunWebcam-#{version}.pkg"

  uninstall quit:      'com.iriun.webcam',
            pkgutil:   'com.iriun.*',
            launchctl: 'com.iriun.cmio.DPA.camera'
end
