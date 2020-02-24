cask 'hider' do
  version '2.5,1562920938'
  sha256 'f22f8a1045842cb2f712cc6727eed931e9d60d01ae54443bffdbd4f36da6ed6a'

  # dl.devmate.com/com.macpaw.site.Hider was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Hider#{version.major}/#{version.before_comma}/#{version.after_comma}/MacPawHider#{version.major}-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.macpaw.site.Hider#{version.major}.xml"
  name 'MacPaw Hider'
  homepage 'https://macpaw.com/hider'

  auto_updates true

  app "MacPaw Hider #{version.major}.app"
end
