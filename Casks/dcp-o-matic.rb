cask 'dcp-o-matic' do
  version '2.12.8'
  sha256 '6daf2a2cf6f94486b365f994c42f93afde6c41dc4799a960766022ec5493c812'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
