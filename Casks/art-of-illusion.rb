cask 'art-of-illusion' do
  version '3.0.2'
  sha256 '6ce23726cb1f97b7b493713fb2494e237b5947ba6711a0bd24b33eb2dfb4f52b'

  # sourceforge.net/aoi was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/aoi/ArtOfIllusion#{version.no_dots}-Mac.dmg"
  appcast 'https://sourceforge.net/projects/aoi/rss',
          checkpoint: 'fae03e7c48c7884a973bf22bed829959c7b3cc314353939578aa4dea4ae958cf'
  name 'Art of Illusion'
  homepage 'http://www.artofillusion.org'

  depends_on macos: '>= :snow_leopard'

  app 'Art of Illusion/Art of Illusion.app'
end
