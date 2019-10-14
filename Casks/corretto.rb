cask 'corretto' do
  version '11.0.4.11.1'
  sha256 'cba291ec0177a4a047e06c6c3a44ce7c5e9505c233d629c3c82fb3e6376e734b'

  # d3pxv6yz143wms.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3pxv6yz143wms.cloudfront.net/#{version}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast "https://docs.aws.amazon.com/en_us/corretto/latest/corretto-#{version.major}-ug/corretto-#{version.major}-ug.rss"
  name 'Amazon Corretto'
  homepage 'https://aws.amazon.com/corretto/'

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
