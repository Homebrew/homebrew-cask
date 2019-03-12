cask 'dcp-o-matic-batch-converter' do
  version '2.12.20'
  sha256 'be0343519b17523334b847bfe8ea68982f87d3bc8036ae57c0602dad0a00f36b'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
