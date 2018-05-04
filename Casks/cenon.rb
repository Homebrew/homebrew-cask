cask 'cenon' do
  version '4.0.6'
  sha256 '8087d45c40c98bc32ff983c8fcff6ba48467bd9c46e376dcbe4449a90182a4cd'

  # cenon.download was verified as official when first introduced to the cask
  url "http://www.cenon.download/binaries/Apple/Cenon-#{version}.pkg"
  name 'Cenon'
  homepage 'http://www.cenon.info/'

  pkg "Cenon-#{version}.pkg"

  uninstall pkgutil: 'com.cenon'
end
