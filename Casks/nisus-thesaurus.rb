cask 'nisus-thesaurus' do
  version '1.1.1'
  sha256 'ee9203ada1fa944ac4b7fc04f03ec58fd7c60ce1d73e6058321583f7dbf8ae5a'

  url "https://nisus.com/files/free/Thesaurus-v#{version.no_dots}.zip"
  name 'Nisus Thesaurus'
  homepage 'https://nisus.com/Thesaurus/'

  depends_on macos: '>= :snow_leopard'

  app 'Nisus Thesaurus.app'
end
