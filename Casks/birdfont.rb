cask 'birdfont' do
  if MacOS.version <= :el_capitan
    version '2.19.4'
    sha256 '013d9c42c2252b57079453bd27e4c18dbbc09eda55563ff1516fd079c0499f76'
  else
    version '3.30.6'
    sha256 '2ade922f34d0e119d51be16c60ef2be3198188cff289b3bcaa657485eefc687c'
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  appcast 'https://birdfont.org/purchase.php'
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  depends_on macos: '>= :el_capitan'

  app 'BirdFontNonCommercial.app'
end
