cask 'fldigi' do
  version '4.1.14,4.3.7'
  sha256 'e90c69c51df8b611a8d82851c6da2af1fce733b25809ac313460fc3a90b3e764'

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version.before_comma}_x86_64.dmg"
  appcast 'https://sourceforge.net/projects/fldigi/rss?path=/fldigi'
  name 'fldigi'
  homepage 'https://sourceforge.net/projects/fldigi/files/fldigi/'

  app "fldigi-#{version.before_comma}.app"
  app "flarq-#{version.after_comma}.app"
end
