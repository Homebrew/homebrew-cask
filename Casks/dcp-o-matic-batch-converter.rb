cask 'dcp-o-matic-batch-converter' do
  version '2.14.31'
  sha256 'd27a088805bbc4772004371169b01521c4c915602dd1c31bbd941fc1ce31c1f9'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
