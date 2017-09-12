cask 'birdfont' do
  version '2.19.4'
  sha256 '013d9c42c2252b57079453bd27e4c18dbbc09eda55563ff1516fd079c0499f76'

  url "https://birdfont.org/download/birdfont-#{version}-free.dmg"
  appcast 'https://github.com/johanmattssonm/birdfont/releases.atom',
          checkpoint: 'd63a7f199cb21b0a2fff532b25e7bea671390ac27f90840c420fbba1952d0e38'
  name 'BirdFont'
  homepage 'https://birdfont.org/'

  app 'BirdFontNonCommercial.app'
end
