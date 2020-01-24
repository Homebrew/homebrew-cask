cask 'corretto' do
  version '11.0.6.10.1-1'
  sha256 '4c685635b690cf905e5c2e533503c96ddbc6fdc205a1867a7e8a0bea9fea77ea'

  url "https://corretto.aws/downloads/resources/#{version.sub(%r{-\d+}, '')}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast "https://docs.aws.amazon.com/en_us/corretto/latest/corretto-#{version.major}-ug/corretto-#{version.major}-ug.rss"
  name 'Amazon Corretto'
  homepage 'https://corretto.aws/'

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
