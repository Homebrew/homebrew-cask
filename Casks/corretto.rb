cask 'corretto' do
  version '11.0.2.9.3'
  sha256 'd25da98b91cc954bea3d9a2cb4f3cb296158e79445b88fdb32190b4964d09f5b'

  # d3pxv6yz143wms.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3pxv6yz143wms.cloudfront.net/#{version}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast "https://docs.aws.amazon.com/en_us/corretto/latest/corretto-#{version.major}-ug/corretto-#{version.major}-ug.rss"
  name 'Amazon Corretto'
  homepage 'https://aws.amazon.com/corretto/'

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
