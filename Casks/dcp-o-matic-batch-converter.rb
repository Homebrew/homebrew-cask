cask 'dcp-o-matic-batch-converter' do
  version '2.14.14'
  sha256 'fd0cbf5a1f91f2b18b6213ae3b46a76a7c58bbc4f1ce0eb8d1bd5bebab733a6f'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
