cask 'blue-sherpa' do
  version '20181208'
  sha256 '953c4d1280d752cad7499a4918241d20edf4e3e47fb5a4628e8df4ef3ce067a8'

  url "http://software.bluedesigns.com/blue/BlueSherpa-#{version}.pkg"
  name 'Blue Sherpa'
  homepage 'https://www.bluedesigns.com/products/sherpa/'

  pkg "BlueSherpa-#{version}.pkg"

  uninstall pkgutil: 'com.bluemicrophones.Blue'
end
