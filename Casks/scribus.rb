cask 'scribus' do
  version '1.4.7'
  sha256 'fc5fb1f34abd177586f3d9791801c4a166cd818f3c985960b95f1092dad8a9d4'

  # sourceforge.net/scribus was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/scribus/scribus/#{version}/scribus-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/scribus/rss?path=/scribus'
  name 'Scribus'
  homepage 'https://www.scribus.net/'

  app 'Scribus.app'
end
