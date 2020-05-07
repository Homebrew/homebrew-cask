cask 'birdfont' do
  if MacOS.version <= :el_capitan
    version '2.19.4'
    sha256 '013d9c42c2252b57079453bd27e4c18dbbc09eda55563ff1516fd079c0499f76'
  elsif MacOS.version <= :mojave
    version '3.32.2'
    sha256 '858ed49d0a517861c2f5512c80640fe134c9ad9137fb88d1d3962fab5a768b19'
  else
    version '4.0.0'
    sha256 'd7918abcc43fad725af18ccec272c559688510eb4ec63854dcbdc29ab5e239ec'
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  appcast 'https://birdfont.org/purchase.php'
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  depends_on macos: '>= :el_capitan'

  app 'BirdFontNonCommercial.app'
end
