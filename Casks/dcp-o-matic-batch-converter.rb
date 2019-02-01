cask 'dcp-o-matic-batch-converter' do
  version '2.12.18'
  sha256 '6f01254a0d627eeed9d008a6890fad52b0890f9abf55c42d279250cb4941ee81'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
