cask 'dcp-o-matic' do
  version '2.14.30'
  sha256 '9aad1e03a2542e8e2190218a919f624561c71dd2102b33666382078e65591e68'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
