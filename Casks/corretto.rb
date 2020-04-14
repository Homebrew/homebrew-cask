cask 'corretto' do
  version '11.0.7.10.1'
  sha256 'efd6cba4404041ef6ac3e882042f12c76b844d918f83b56493187df3bae3815e'

  url "https://corretto.aws/downloads/resources/#{version.sub(%r{-\d+}, '')}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast "https://docs.aws.amazon.com/en_us/corretto/latest/corretto-#{version.major}-ug/corretto-#{version.major}-ug.rss"
  name 'Amazon Corretto'
  homepage 'https://corretto.aws/'

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
