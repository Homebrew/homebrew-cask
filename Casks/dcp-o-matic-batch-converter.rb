cask 'dcp-o-matic-batch-converter' do
  version '2.14.26'
  sha256 'e7b68d9121875461f93c4aa7763bf107160f658abe0794bf32fbfe9c672195db'

  url "https://dcpomatic.com/dl.php?id=osx-batch&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Batch converter'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Batch converter.app"
end
