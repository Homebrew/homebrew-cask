cask 'scribus' do
  version '1.5.5'
  sha256 'dba7842bf3313c0a2c758a9d8613a7f881774008c10ea1e0445b34b020f6bbbe'

  # sourceforge.net/scribus was verified as official when first introduced to the cask
  url "https://sourceforge.net/projects/scribus/files/scribus-devel/#{version}/scribus-#{version}_1013.dmg/download"
  appcast 'https://wiki.scribus.net/canvas/1.5.5_Release'
  name 'Scribus'
  homepage 'https://www.scribus.net/'

  app 'Scribus.app'
end
