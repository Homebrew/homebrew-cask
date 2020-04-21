cask 'fldigi' do
  version '4.1.11,4.3.7'
  sha256 '68ea5b357ffffbf7ea2c675312e1d51750f54ea407c4425a5390160ce941aca5'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version.before_comma}_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version.before_comma}.app"
  app "flarq-#{version.after_comma}.app"
end
