cask 'dcp-o-matic-batch-converter' do
  version '2.14.11'
  sha256 '48f102041ed388aa87d804593bc73525ae8864f3341f8a49c06e1203dc1a6986'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
