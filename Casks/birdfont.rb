cask 'birdfont' do
  version '3.15.0'
  sha256 '0d4a4b0278db9b10b038364e1819d642ef39094c5ad719d44a9065461c3483ae'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  depends_on macos: '>= :sierra'

  app 'BirdFontNonCommercial.app'
end
