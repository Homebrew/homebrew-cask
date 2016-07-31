cask 'art-of-illusion' do
  version '3.0.2'
  sha256 '6ce23726cb1f97b7b493713fb2494e237b5947ba6711a0bd24b33eb2dfb4f52b'

  # sourceforge.net/aoi was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/aoi/ArtOfIllusion#{version.no_dots}-Mac.dmg"
  name 'Art of Illusion'
  homepage 'http://www.artofillusion.org'
  license :gpl

  depends_on macos: '>= :snow_leopard'

  app 'Art of Illusion/Art of Illusion.app'
end
