cask 'corretto' do
  version '8,8u192'
  sha256 '50ba40b0d5e004c8b4720916a4f40660472bd8ad22f90b88eec87fb98b2455aa'

  # d3pxv6yz143wms.cloudfront.net was verified as official when first introduced to the cask
  url "https://d3pxv6yz143wms.cloudfront.net/amazon-corretto-preview2-#{version.after_comma}-macosx-x64.pkg"
  appcast 'https://docs.aws.amazon.com/en_us/corretto/latest/corretto-8-ug/corretto-8-ug.rss'
  name 'Amazon Corretto'
  homepage 'https://aws.amazon.com/corretto/'

  pkg "amazon-corretto-preview2-#{version.after_comma}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.before_comma}"
end
