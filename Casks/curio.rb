cask 'curio' do
  version '14002.2'
  sha256 '4d10db218b453769925c9c357463e58676bd26e7b66aa8a326fa40836e590d24'

  url "https://www.zengobi.com/downloads/Curio#{version.no_dots}.zip"
  appcast 'https://www.zengobi.com/appcasts/Curio14-2ZaxaUUlKorRS4Hf.xml'
  name 'Curio'
  homepage 'https://zengobi.com/curio/'

  depends_on macos: '>= :high_sierra'

  app 'Curio.app'
end
