cask 'opencpn' do
  version '5.2.0,1.4d956e1'
  sha256 'b31c23bd02dfaf7a8844db39c894c0765b386b4a082cb0b2e8fab7e2ed9f1209'

  url "http://download.opencpn.org/#{version.before_comma}/OpenCPN_#{version.before_comma}+#{version.after_comma}.pkg"
  appcast 'https://github.com/OpenCPN/OpenCPN/releases.atom'
  name 'OpenCPN'
  homepage 'https://www.opencpn.org/'

  pkg "OpenCPN_#{version.before_comma} #{version.after_comma}.pkg"

  uninstall pkgutil: [
                       'org.opencpn.pkg.OpenCPN',
                       'org.opencpn',
                     ]
end
