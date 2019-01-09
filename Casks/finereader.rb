cask 'finereader' do
  version :latest
  sha256 :no_check

  url 'https://fr7.abbyy.com/mac/fr/ABBYY_FineReader_Pro_ESD.dmg'
  name 'ABBYY FineReader Pro'
  homepage 'https://www.abbyy.com/finereader/pro-for-mac/'

  depends_on macos: '>= :mavericks'

  app 'FineReader.app'
end
