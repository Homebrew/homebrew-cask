cask 'corretto' do
  version '11.0.6.10.1-2'
  sha256 '401d569df7771aacaf8ea3a1ceadf38c1044ab9737ddb21685b375f395adbf50'

  url "https://corretto.aws/downloads/resources/#{version.sub(%r{-\d+}, '')}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast "https://docs.aws.amazon.com/en_us/corretto/latest/corretto-#{version.major}-ug/corretto-#{version.major}-ug.rss"
  name 'Amazon Corretto'
  homepage 'https://corretto.aws/'

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
