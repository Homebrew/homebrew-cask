cask 'birdfont' do
  if MacOS.version <= :el_capitan
    version '2.19.4'
    sha256 '013d9c42c2252b57079453bd27e4c18dbbc09eda55563ff1516fd079c0499f76'
  else
    version '3.28.1'
    sha256 '548c6a0a037f758569b25bd0c40d26e6114bb9c48df4da72e171bf35c7bfff85'
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  appcast 'https://birdfont.org/purchase.php'
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  depends_on macos: '>= :el_capitan'

  app 'BirdFontNonCommercial.app'
end
