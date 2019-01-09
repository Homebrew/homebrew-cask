cask 'dcp-o-matic-batch-converter' do
  version '2.12.12'
  sha256 '632c33a3b713ed633acdeeb27efa67f23d2cc7c5711cc3891d6d4bb794d2236f'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
