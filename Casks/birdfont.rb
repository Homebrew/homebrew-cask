cask 'birdfont' do
  version '3.12.4'
  sha256 'f3ec1d508310aa57c7d449ca3d08ce151ff8d589cd47ce9785deaa8fd85ff72c'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  depends_on macos: '>= :sierra'

  app 'BirdFontNonCommercial.app'
end
