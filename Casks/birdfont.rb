cask 'birdfont' do
  if MacOS.version <= :el_capitan
    version '2.19.4'
    sha256 '013d9c42c2252b57079453bd27e4c18dbbc09eda55563ff1516fd079c0499f76'
  else
    version '3.21.1'
    sha256 '81f7269486bfbbbc6534233fc94597c69b23d2131984dde8610b68e10a35f75e'
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  depends_on macos: '>= :el_capitan'

  app 'BirdFontNonCommercial.app'
end
