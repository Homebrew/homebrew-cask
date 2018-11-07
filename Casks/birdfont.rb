cask 'birdfont' do
  version '3.14.5'
  sha256 'deadf6728fa42dd23b83d25d30317837c3177b1a0e2318676973847a05f88b3d'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  depends_on macos: '>= :sierra'

  app 'BirdFontNonCommercial.app'
end
