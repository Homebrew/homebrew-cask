cask 'hider' do
  version '2.2.4'
  sha256 '236361356ed7aae1c49dff5be2e5d0f18a4e880701a346f41a55c361271ba552'

  # dl.devmate.com/com.macpaw.site.Hider was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Hider#{version.major}/MacPawHider#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.macpaw.site.Hider#{version.major}.xml",
          checkpoint: 'e1fa46d71681313c8f476a800d7d28b2d61644dc093331db97bfbcb0a583d071'
  name 'MacPaw Hider'
  homepage 'https://macpaw.com/hider'

  depends_on macos: '>= :mountain_lion'

  app "MacPaw Hider #{version.major}.app"
end
