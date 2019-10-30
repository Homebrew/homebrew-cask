cask 'dcp-o-matic-batch-converter' do
  version '2.14.12'
  sha256 '5493503392ec5b82ab37400b2b031c8a1a053966a0a8e3667601dc637c49b55e'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
