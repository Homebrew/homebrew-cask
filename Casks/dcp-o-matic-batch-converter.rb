cask 'dcp-o-matic-batch-converter' do
  version '2.14.4'
  sha256 '7732225be806e795f3a2333f150638b7476e2727055b7affeedd8fba976ba20b'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
