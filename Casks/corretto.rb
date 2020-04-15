cask 'corretto' do
  version '11.0.7.10.1'
  sha256 'efd6cba4404041ef6ac3e882042f12c76b844d918f83b56493187df3bae3815e'

  url "https://corretto.aws/downloads/resources/#{version.sub(%r{-\d+}, '')}/amazon-corretto-#{version}-macosx-x64.pkg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://corretto.aws/downloads/latest/amazon-corretto-11-x64-macos-jdk.pkg'
  name 'Amazon Corretto'
  homepage 'https://corretto.aws/'

  pkg "amazon-corretto-#{version}-macosx-x64.pkg"

  uninstall pkgutil: "com.amazon.corretto.#{version.major}"
end
