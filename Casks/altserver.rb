cask 'altserver' do
  version '1.2'
  sha256 '247efe3dee1e2bd27bf409b421cff7b569a891bf9bcb388ab1f4b6046e92386e'

  # f000.backblazeb2.com/file was verified as official when first introduced to the cask
  url "https://f000.backblazeb2.com/file/altstore/altserver/altserver-#{version.dots_to_underscores}.zip"
  appcast 'https://altstore.io/altserver/sparkle-macos.xml'
  name 'AltServer'
  homepage 'https://altstore.io/'

  depends_on macos: '>= :mojave'

  app 'AltServer.app'
end
