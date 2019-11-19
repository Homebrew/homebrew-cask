cask 'corretto' do
  version '11.0.5.10.1'
  sha256 '7fd818917bc291f7c3fbd730ecc07d9643ed803ca9159e8d9ac572fe33e812a7'

  # d3pxv6yz143wms.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3pxv6yz143wms.cloudfront.net/#{version}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast "https://docs.aws.amazon.com/en_us/corretto/latest/corretto-#{version.major}-ug/corretto-#{version.major}-ug.rss"
  name 'Amazon Corretto'
  homepage 'https://aws.amazon.com/corretto/'

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
