cask 'corretto' do
  version '8,8.202.08.2'
  sha256 '0b79bbf6e4fa5f5ad75e49a36b52def428e160582476530b20a68837deaf0e58'

  # d2znqt9b1bc64u.cloudfront.net was verified as official when first introduced to the cask
  url "https://d2znqt9b1bc64u.cloudfront.net/amazon-corretto-#{version.after_comma}-macosx-x64.pkg"
  appcast 'https://docs.aws.amazon.com/en_us/corretto/latest/corretto-8-ug/corretto-8-ug.rss'
  name 'Amazon Corretto'
  homepage 'https://aws.amazon.com/corretto/'

  pkg "amazon-corretto-#{version.after_comma}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.before_comma}"
end
