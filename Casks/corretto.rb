cask 'corretto' do
  version '11.0.6.10.1'
  sha256 '03d832483d32de96125a56d40a1b8320f91deb0c0a422552c520cb10b9f779c5'

  url "https://corretto.aws/downloads/resources/#{version}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast "https://docs.aws.amazon.com/en_us/corretto/latest/corretto-#{version.major}-ug/corretto-#{version.major}-ug.rss"
  name 'Amazon Corretto'
  homepage 'https://corretto.aws/'

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
