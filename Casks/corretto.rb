cask 'corretto' do
  version '8,8u192'
  sha256 '5836ca06194bee33a476bd9412ef810a8e8a98eb0202553567933b70f3aa17e4'

  # d3pxv6yz143wms.cloudfront.net/corretto was verified as official when first introduced to the cask
  url "https://d3pxv6yz143wms.cloudfront.net/corretto-jdk-#{version.after_comma}-macosx-x64.pkg"
  appcast 'https://docs.aws.amazon.com/en_us/corretto/latest/corretto-8-ug/corretto-8-ug.rss'
  name 'Amazon Corretto'
  homepage 'https://aws.amazon.com/corretto/'

  pkg "corretto-jdk-#{version.after_comma}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.before_comma}"
end
