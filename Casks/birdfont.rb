cask 'birdfont' do
  version '3.7.1'
  sha256 '28964930755d18b1233b3debe8ff39029530da73151dd218f85eefdb169c4bd6'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  app 'BirdFontNonCommercial.app'
end
