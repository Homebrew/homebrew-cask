cask 'birdfont' do
  version '3.12.14'
  sha256 '82d6615125dd6953a51f4503c4bdd54e750da3f13850a5013b8225de18e5bb99'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  depends_on macos: '>= :sierra'

  app 'BirdFontNonCommercial.app'
end
