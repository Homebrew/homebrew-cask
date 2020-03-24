cask 'dcp-o-matic-batch-converter' do
  version '2.14.32'
  sha256 'f08af591098d5fc8d3e8e2990c9afc97377a4fc1e79f24fabf78585dace22bc0'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
