cask 'birdfont' do
  version '3.12.12'
  sha256 '30378755f0ed14d69460039a032e42c3b15f29caa5d1568b1d7d83bf4d1e544d'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  depends_on macos: '>= :sierra'

  app 'BirdFontNonCommercial.app'
end
