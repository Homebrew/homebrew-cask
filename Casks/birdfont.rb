cask 'birdfont' do
  if MacOS.version <= :el_capitan
    version '2.19.4'
    sha256 '013d9c42c2252b57079453bd27e4c18dbbc09eda55563ff1516fd079c0499f76'
  elsif MacOS.version <= :mojave
    version '4.3.0'
    sha256 'cc0055ab21b127c50acca9aa14475f9dbff299ce4c4908a7e6246657f2729f62'
  else
    version '4.3.1'
    sha256 '092eebc6ce12dd6efddc0e6d47844d913211360b51d4c19758e7e646096742f7'
  end

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  appcast 'https://birdfont.org/purchase.php'
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  depends_on macos: '>= :el_capitan'

  app 'BirdFontNonCommercial.app'
end
