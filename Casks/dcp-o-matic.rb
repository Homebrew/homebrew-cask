cask 'dcp-o-matic' do
  version '2.14.1'
  sha256 '7ce6cebded02ce73ca3f600519fa5312fd0c5e2e78dfe587e9aea6b00c5b5a99'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
