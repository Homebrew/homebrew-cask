cask 'hider' do
  version '2.4.9,1536932077'
  sha256 '4a292ccafc4f5abab106a37e608ece909a200f704926a9ee9ca3dbbfc644352e'

  # dl.devmate.com/com.macpaw.site.Hider was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.macpaw.site.Hider#{version.major}/#{version.before_comma}/#{version.after_comma}/MacPawHider#{version.major}-#{version.before_comma}.zip"
  appcast "https://updates.devmate.com/com.macpaw.site.Hider#{version.major}.xml"
  name 'MacPaw Hider'
  homepage 'https://macpaw.com/hider'

  depends_on macos: '>= :mountain_lion'

  app "MacPaw Hider #{version.major}.app"
end
