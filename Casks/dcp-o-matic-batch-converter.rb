cask 'dcp-o-matic-batch-converter' do
  version '2.14.25'
  sha256 'f654d0169a667dae82df507a420a80a900915acec98b0bef30b3627ace85455f'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
