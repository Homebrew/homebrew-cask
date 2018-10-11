cask 'birdfont' do
  version '3.12.11'
  sha256 'deffe442f70efb6579fa4093c46271fbc6960aad4a1cbf53afc3f85036d56080'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  depends_on macos: '>= :sierra'

  app 'BirdFontNonCommercial.app'
end
