cask 'people-plus-content-ip' do
  version '1.4.2'
  sha256 '930e4b3d4110f647b4912010e61ad5d476ada44cda50cc813496de1c11ea7f59'

  url "http://www.polycom.co.uk/content/dam/polycom/common/documents/firmware/ppcip-mac-v#{version}-pkg.zip"
  name 'People + Content IP'
  homepage 'http://www.polycom.co.uk/products-services/hd-telepresence-video-conferencing/realpresence-accessories/people-content-ip.html#stab1'

  pkg "PPCIPmac_v#{version}.pkg"

  uninstall launchctl: 'com.polycom.PPCIP',
            pkgutil:   'com.polycom.PPCIP'
end
