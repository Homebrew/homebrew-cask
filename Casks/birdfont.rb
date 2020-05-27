cask 'birdfont' do
  if MacOS.version <= :el_capitan
    version '2.19.4'
    sha256 '013d9c42c2252b57079453bd27e4c18dbbc09eda55563ff1516fd079c0499f76'
  elsif MacOS.version <= :mojave
    version '4.0.1'
    sha256 '6fb76654291109a3afb6c9e9a3f8c4ea0494f3d371b918a08116accbb14468dc'
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
