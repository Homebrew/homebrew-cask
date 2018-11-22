cask 'birdfont' do
  if MacOS.version <= :el_capitan
    version '2.19.4'
    sha256 '013d9c42c2252b57079453bd27e4c18dbbc09eda55563ff1516fd079c0499f76'
  else
    version '3.16.0'
    sha256 '43a9ef571cae34b9f8f3b4f5e2846472d5dce2dc8297dad76c358f4966f50502'
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  depends_on macos: '>= :el_capitan'

  app 'BirdFontNonCommercial.app'
end
