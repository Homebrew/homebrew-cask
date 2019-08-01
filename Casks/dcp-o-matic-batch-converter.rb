cask 'dcp-o-matic-batch-converter' do
  version '2.14.8'
  sha256 'f88224ad4b66b5e944faa2e388fb881ffbbf008a3985bf9814adb8681706a3c4'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
