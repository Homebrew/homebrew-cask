cask 'hider' do
  version '2.4.6'
  sha256 'a3de81502cbf737005e57f6f7ac3321197606f3174721abfcd4a0c683cf0fa6e'

  # dl.devmate.com/com.macpaw.site.Hider was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Hider#{version.major}/MacPawHider#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.macpaw.site.Hider#{version.major}.xml",
          checkpoint: '7772181ddf3d0b42b78871ee7ce0d33b1382de7a4c7a81cd00449d33cf147318'
  name 'MacPaw Hider'
  homepage 'https://macpaw.com/hider'

  depends_on macos: '>= :mountain_lion'

  app "MacPaw Hider #{version.major}.app"
end
