cask 'hider' do
  version '2.4.1'
  sha256 'afecc482336869fa4ae6f8d8bb4801282a058722cbf89b89a02cdc1593f13820'

  # dl.devmate.com/com.macpaw.site.Hider was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Hider#{version.major}/MacPawHider#{version.major}.dmg"
  appcast "https://updates.devmate.com/com.macpaw.site.Hider#{version.major}.xml",
          checkpoint: 'f64732e5a7e15ef678e7dd4b1d8beeaa0a5bbe3ff8fa2071fc7a3903410274dc'
  name 'MacPaw Hider'
  homepage 'https://macpaw.com/hider'

  depends_on macos: '>= :mountain_lion'

  app "MacPaw Hider #{version.major}.app"
end
