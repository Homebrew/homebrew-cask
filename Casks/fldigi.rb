cask 'fldigi' do
  version '3.23.13'
  sha256 '936ccb7d07eb70a3565c53fde77753b47d7fa8495e2adba04d48c7fcdf12b372'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_i386.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi',
          checkpoint: '2cddfc239be10e2acf1ab18d722f6cf296d04c4900ed46ed76ee91c6552434d9'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version}.app"
  app 'flarq-4.3.6.app'
end
